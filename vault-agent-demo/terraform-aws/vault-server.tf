//--------------------------------------------------------------------
// Vault Server Instance

resource "aws_instance" "vault-server" {
  count                       = var.vault_server_count
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = module.vault_demo_vpc.public_subnets[0]
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.learn-vault-agent.id]
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.vault-server.id

  tags = {
    Name     = "${var.environment_name}-vault-server-${count.index}"
    TTL      = var.hashibot_reaper_ttl
  }

  user_data = templatefile("${path.module}/templates/userdata-vault-server.tftpl", { tpl_vault_service_name = "vault-${var.environment_name}", tpl_kms_key = aws_kms_key.vault.id, tpl_aws_region = var.aws_region, tpl_consul_bootstrap_expect = var.vault_server_count, account_id = data.aws_caller_identity.current.account_id, role_name = "${var.environment_name}-vault-client-role" })

  lifecycle {
    ignore_changes = [
      ami,
      tags,
    ]
  }
}

data "aws_caller_identity" "current" {
}
