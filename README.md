# sc-covarr

Single cell RNA-seq processing infrastructure

# Install Docker 

1. [Find your supported platform and download Docker.](https://docs.docker.com/v17.12/install/#supported-platforms)

Suggested instructions to install: 
```
sudo yum update

sudo amazon-linux-extras install docker

sudo service docker start

# See https://docs.docker.com/install/linux/linux-postinstall/ to add username to a docker group to manage docker as a non-root user. Restart virtual machine to push changes and run docker run hello-world to test if command executes without sudo

sudo groupadd docker
sudo usermod -aG docker <username> 

# See https://docs.docker.com/install/linux/linux-postinstall/ to configure docker to start on boot
sudo systemctl enable docker
```
# Run Container

This Docker container is built on [`rocker/tidyverse`](https://hub.docker.com/r/rocker/tidyverse/) producing a debian stable work environment. 

1. To get container for the first time: `docker pull kelshmo/sc-covarr`
2. Suggested configuration for running container: 
```
docker run -d -p 8787:8787 -e PASSWORD=<insert password> kelshmo/covarr #replace <password> with your password
```
- `-d` flag allows you the retain use of the terminal while the Docker image is running 
- `-p` specifies port of choice
- `-e` designates a password to login to RStudio

If you are having trouble with your Docker, this [documentation](https://ropenscilabs.github.io/r-docker-tutorial/02-Launching-Docker.html) (or [this documentation](https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image)) may be useful.

3. Now, RStudio has launched invisibly. Open a browser and enter your ip address followed by :8787. You should be greeted by the RStudio welcome screen.

```
username: rstudio
password: <password>
```
  
4. You can `docker stop <container name>` to pause your work and return to it later with `docker start <container name>`.

* To find your container name `docker ps -a`
