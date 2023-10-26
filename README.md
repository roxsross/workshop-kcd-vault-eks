# Workshop VAULT 101
Time to Demo by RoxsRoss

<img width="40%" src="https://miro.medium.com/v2/resize:fit:1400/format:webp/1*KAlT3VBqfJLJ4tRd4uzh5Q.png"> 

# Vault 

Vault es una herramienta de código abierto desarrollada por HashiCorp que se utiliza para gestionar secretos y datos de autenticación en entornos de infraestructura y aplicaciones. Los secretos pueden incluir contraseñas, claves API, certificados, tokens de acceso y otros datos sensibles. Vault se ha vuelto muy popular en entornos de infraestructura moderna, como la orquestación de contenedores y la gestión de microservicios, donde la gestión segura de secretos es esencial.

## Los beneficios de Vault de HashiCorp incluyen:

**Gestión centralizada de secretos**: Vault proporciona un lugar centralizado para almacenar, gestionar y distribuir secretos de forma segura. Esto evita la dispersión de secretos en diferentes aplicaciones y servidores, lo que facilita la gestión y la auditoría.

**Autenticación y autorización seguras**: Vault ofrece mecanismos de autenticación sólidos y controles de autorización para garantizar que solo los usuarios y aplicaciones autorizados puedan acceder a los secretos.

**Rotación automática de secretos**: Vault permite la rotación automática de secretos, lo que significa que puede generar automáticamente nuevas contraseñas o claves y actualizarlas en las aplicaciones sin intervención manual. Esto mejora la seguridad al reducir la exposición de secretos antiguos.

**Integración con diversas tecnologías**: Vault se integra con una amplia variedad de tecnologías y marcos, lo que lo hace versátil y adecuado para entornos de infraestructura moderna, incluyendo contenedores, máquinas virtuales, orquestadores como Kubernetes y sistemas de CI/CD.

**Auditoría y registros detallados**: Vault proporciona registros detallados de todas las actividades relacionadas con secretos, lo que facilita la auditoría y el seguimiento de quién accede a qué secretos y cuándo.

**Políticas de acceso personalizables**: Puede definir políticas de acceso precisas para controlar quién puede acceder a qué secretos, lo que brinda un alto grado de flexibilidad en la gestión de la seguridad.

**Almacenamiento seguro y cifrado**: Vault almacena secretos de manera segura y ofrece capacidades de cifrado fuerte para proteger los datos en reposo y en tránsito.

**Escalamiento y alta disponibilidad**: Vault está diseñado para escalar y garantizar la alta disponibilidad, lo que lo hace adecuado para aplicaciones críticas.

En resumen, Vault de HashiCorp es una herramienta esencial en entornos modernos que requieren una gestión segura de secretos y datos de autenticación. Proporciona un conjunto sólido de características y beneficios para garantizar la seguridad de los secretos y facilitar su administración en aplicaciones y sistemas de infraestructura.

### Comandos

# DEV Server
Start DEV server
```ps
vault server -dev
```

# Before login
Set vault address before log in
```ps
$env:VAULT_ADDR="http://127.0.0.1:8200"
```

# Login
## Login using token
```ps
vault login
```

## Login using userpass
```ps
vault login -method=userpass username=$userName
```

## Secret / KV
### Set a secret in KV Secret Engine
```ps
vault kv put $kvName/$secretName $key=$value
```

```ps
vault kv put secret/secretName key=value
// or old syntax
vault write secret/secretName key=value
```

### Get a secret from KV Secret Engine
```ps
vault kv get secret/secretName
// or old syntax
vault read secret/secretName
```

### Move a secret between KV Secret Engines
```ps
vault secrets move kvSecret1/secretName kvSecret2/secretName 
```

### List all secrets in a Secret Engine
```ps
vault kv list secretEngineName
```

### List all Secrets Engines
```ps
vault secrets list
```

### Upgrade Secret Engine to v2 (v1 is default)
```ps
vault kv enable-versioning secret
```
### Create new KV Secret Engine
```ps
vault secrets enable -path=devkv kv
```

# Token
## Get information about current token
```ps
vault token lookup
```

# Userpass
## Login
```ps
vault login -method=userpass username=$userName
```

## Add a user
```ps
vault write auth/userpass/users/arthur password=dent
```

## List users
```ps
vault list auth/userpass/users
```

# Policies
## List all policies
```ps
vault policy list
```

### Documentación Recomendada:

Installing Vault:
https://developer.hashicorp.com/vault/docs/install

Conceptos:
https://developer.hashicorp.com/vault/docs/concepts

Vault commands (CLI)
https://developer.hashicorp.com/vault/docs/commands

Secrets engines:
https://developer.hashicorp.com/vault/docs/secrets

Agent sidecar injector:
https://developer.hashicorp.com/vault/docs/platform/k8s/injector

Tutorial:
https://developer.hashicorp.com/vault/tutorials/kubernetes/kubernetes-sidecar



---
![](https://github.com/roxsross/roxsross/blob/main/images/roxsross-banner-1.png)

##### Nos Vemos 🔥🔥🔥🔥


---
---
<p align="left" width="100%">
  <br>
    <img width="20%" src="https://raw.githubusercontent.com/roxsross/roxsross/main/images/Copia de ROXSROSS FINAL (1).png"> 
</p>

⌨️ con ❤️ por [roxsross](https://github.com/roxsross) 😊

"No se trata de cambiar el mundo, creo que creas un cambio pequeño, pero que te importe estás cambiando las cosas".


[![site](https://img.shields.io/badge/Hashnode-2962FF?style=for-the-badge&logo=hashnode&logoColor=white&link=https://blog.295devops.com) ](https://blog.295devops.com)
[![Blog](https://img.shields.io/badge/dev.to-0A0A0A?style=for-the-badge&logo=devdotto&logoColor=white&link=https://dev.to/roxsross)](https://dev.to/roxsross)
![Twitter](https://img.shields.io/twitter/follow/roxsross?style=for-the-badge)
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=for-the-badge&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/roxsross/)](https://www.linkedin.com/in/roxsross/)
[![Instagram Badge](https://img.shields.io/badge/-Instagram-purple?style=for-the-badge&logo=instagram&logoColor=white&link=https://www.instagram.com/roxsross)](https://www.instagram.com/roxsross/)
[![Youtube Badge](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white&link=https://www.youtube.com/channel/UCa-FcaB75ZtqWd1YCWW6INQ)](https://www.youtube.com/channel/UCa-FcaB75ZtqWd1YCWW6INQ)