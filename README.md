# Migration Project: Jenkins on Docker
![alt text](https://github.com/derekYankie/jenkins-migration/blob/main/jenkins2.295-jdk11_on_docker.png?raw=true)
# Container Registry: DockerHub 🐳

* https://hub.docker.com/r/jenkins/jenkins

# AWS EC2 Instance Commands
To update all packages
```
sudo yum update -y
```
Install docker latest version                             
```
sudo amazon-linux-extras install docker
```
See your docker version
```
docker  -v 
```
Start docker service
```
sudo service docker start
```
Check status of docker service. If it's running or not.                      
```
sudo service docker status
```
To ensure that docker service start after each reboot
```
sudo systemctl enable docker
```
To add ec2-user to docker group
```
sudo usermod -a -G docker ec2-user      
```
Pull Jenkins container image
```
docker pull jenkins/jenkins:2.295-jdk11
```
See if image is downloaded or not
```
docker images
```
mkdir jenkins_project

cd jenkins_project
## Jenkins Starting Version: 2.295

* `docker run --rm --name jenkins -p 8080:8080 -p 50000:50000 -v $PWD/var/jenkins_home jenkins/jenkins:2.295-jdk11`

## Jenkins Upgrade: 2.296
* `docker run --rm --name jenkins -p 8080:8080 -p 50000:50000 -v $PWD/var/jenkins_home jenkins/jenkins:2.296-jdk11`
