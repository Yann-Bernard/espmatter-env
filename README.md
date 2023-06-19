# ESPMATTER-ENV

This is the development environment for our project. 

## Tabel of Contents
- [ESPMATTER-ENV](#espmatter-env)
  - [Tabel of Contents](#tabel-of-contents)
  - [Using the environment](#using-the-environment)
  - [Resources](#resources)

## Using the environment
1. Install Docker
2. Getting the image (1 or 2)
   1. Build the image
        ```bash
        docker build -f ./Dockerfile -t ubuntu:matter-esp .
        ```
        got to ``cd ~/scripts`` and run ``./install.sh`` 
        <br/><br/>

    2. Pull the image on https://hub.docker.com/repository/docker/yannbernard/matter-esp-dev/general
        ```bash
        docker push yannbernard/matter-esp-dev:latest
        ```

3. Run the image
    ```bash
    docker run -it --rm -v $(pwd):/home/devuser/projects ubuntu:matter-esp
    ```
    Or connect to it via VSCode Remote Containers

4. Source the environment
    ```bash
    source ~/scripts/source.sh
    ``` 

## Resources
Setting up: https://www.codemag.com/Article/1811021/Docker-for-Developers