# Despliegue de Aplicación con AWS App Runner y Terraform

Este repositorio contiene el código fuente de Terraform para la creación y configuración de la aplicación en AWS App Runner, así como la pipeline de GitHub Actions para automatizar el proceso de despliegue.

## Estructura del Repositorio

- **apprunner-poc.tf:** Este fichero contiene un ejemplo del módulo de Terraform para la creación y configuración de la aplicación en App Runner de la comunidad:
- [Module] (https://github.com/terraform-aws-modules/terraform-aws-app-runner/).
- **.github/workflows:** Aquí se encuentra la pipeline necesaria para ejecutar el terraform.
- **script.sh:** Como para conectar el repositorio contra Github necesitas aceptarlo manualmente he generado un script que verifica si está confirmado o no y va mostrando mensajes por pantalla. (recuerda aceptarlo antes de seguir).

## Código Fuente de la Aplicación

**Nota:** El código fuente de la aplicación no está incluido en este repositorio. Lo podréis encontrar en el siguiente repositorio:
- [APP] ()

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalado lo siguiente:

- [GIT] (https://git-scm.com/)

## Despliegue de la Aplicación

1. **Configuración de las Credenciales en GitHub:**
   - Configura las [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets) con las credenciales de AWS necesarias para la pipeline. En este caso deberás de configurarlas en tu repositorio.

2. **Configuración de AWS App Runner:**
   - Ajusta las configuraciones necesarias en el fichero `variables.tf` según tus necesidades.

3. **Despliegue Automático con GitHub Actions:**
   - Cada vez que realices un push a la rama `main`, la pipeline de GitHub Actions se activará automáticamente, desencadenando el despliegue de la infrastructura necesaria para poder deployar nuestra app en AppRunner.

## Importante: Entorno de Prueba (PoC)

Este repositorio está destinado para propósitos de prueba y es un entorno de prueba de concepto (PoC). No se recomienda utilizar este entorno para aplicaciones de producción. Asegúrate de comprender las limitaciones y configuraciones específicas para PoC antes de implementar en entornos de producción.

## Contribuciones

¡Contribuciones son bienvenidas! Si encuentras algún problema o deseas mejorar este proyecto, siéntete libre de abrir un problema o enviar un pull request.

## Licencia

Este proyecto está bajo la licencia [MIT](LICENSE).
