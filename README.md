# DEMO Contenerización

Este proyecto es una demostración de la contenerización, mostrando los beneficios y el uso de la tecnología de contenedores. 
A través de esta demo, aprenderás cómo crear y gestionar contenedores utilizando plataformas populares de contenerización 
como Docker.

## Requisitos

- [Git](https://git-scm.com)
- [Docker](https://docs.docker.com)

## Obtener una copia del proyecto

Para clonar este proyecto, puedes seguir los siguientes pasos:

1. Abre una terminal en tu máquina y navega hasta el directorio donde deseas clonar el proyecto.
   
2. En este [enlace](https://github.com/drestrepob/containerization-demo) encontarás el sitio en el que se encuentra alojado el proyecto.
   
3. Ejecuta el siguiente comando para clonar el repositorio:

    ```bash
    git clone https://github.com/danielrestrepo/containerization-demo.git
    ```

Una vez que se complete la clonación, tendrás una copia local del proyecto en tu máquina.


## Ejecutar el proyecto

Para ejecutar el proyecto, sigue los siguientes pasos:

1. Asegúrate de tener Docker instalado en tu máquina. Puedes descargarlo desde [aquí](https://www.docker.com/get-started).

2. Abre una terminal y navega hasta el directorio del proyecto.

3. Construye la imagen del contenedor ejecutando el siguiente comando:

    ```bash
    docker build -t demo .
    ```

4. Una vez que la imagen se haya construido correctamente, puedes ejecutar el contenedor con el siguiente comando:

    ```bash
    docker run -p 8000:8000 --rm demo
    ```

    > Si tienes problemas con la exposición de puertos, aségurate de usar un puerto que esté libre.

5. Ahora puedes acceder a la aplicación en tu navegador web ingresando la siguiente URL:

    ```
    http://localhost:8000
    ```

¡Listo! Ahora deberías poder ver la documentación de la API 🚀
