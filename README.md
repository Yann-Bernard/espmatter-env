# ESPMATTER-ENV

This is the development environment for our project. 

## Tabel of Contents
- [ESPMATTER-ENV](#espmatter-env)
  - [Tabel of Contents](#tabel-of-contents)
  - [Using the environment](#using-the-environment)
  - [Environment](#environment)
  - [Resources](#resources)

## Using the environment
1. Install Docker
2. Getting the image (1 or 2)
   1. Build the image
        ```bash
        make build
        ```
        <br/><br/>

    2. Pull the image on https://hub.docker.com/repository/docker/yannbernard/matter-esp-dev/general
        ```bash
        docker pull yannbernard/matter-esp-dev:latest
        ```

3. Run the image
    ```bash
    make run
    ```
    Or connect to it via VSCode Remote Containers

## Environment
Password is: esppasswd

## Resources
Setting up: https://www.codemag.com/Article/1811021/Docker-for-Developers  
espidf: https://docs.espressif.com/projects/esp-matter/en/latest/esp32/developing.html
