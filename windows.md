```bash
#
# WINDOWS 
# Docker, docker-compose, virtualbox
# kubernetes-cli + minikube 
# openshift-cli + minishift
#

#
# Eloszor telepitsuk choco-t
# https://chocolatey.org/docs/installation
#

choco install virtualbox
choco install docker-toolbox
choco install docker-compose

# kubernetes kliens
choco install kubernetes-cli

# openshift kliens
choco install openshift-cli

#
# minikube 
#
choco install minikube

minikube config set memory 6144
# ha van legalabb 10Gn memoriad, akkor
# minikube config set memory 8192 
#
minikube config set disk-size 10000MB
minikube config set vm-driver virtualbox
# minikube start utan
minikube config set dashboard true
minikube config set ingress true

minikube start
# Ha Hyper-V-vel szeretnenk futtatni fel kell venni egy uj virtual switchet a Hyper-V Managerben:
# https://medium.com/@JockDaRock/minikube-on-windows-10-with-hyper-v-6ef0f4dc158c

# tobb perc is lehet mire elindul es betolti minden szukseges csomagot
# 
minikube stop

#
# minishift
#
choco install minishift
minishift config set vm-driver virtualbox

# Kell meg
# Linux
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

# Kell meg
# mac
brew install kubectx
brew install helm

# Kell meg
# Windows
https://github.com/thomasliddledba/kubenswin
https://github.com/thomasliddledba/kubectxwin
https://medium.com/@JockDaRock/take-the-helm-with-kubernetes-on-windows-c2cd4373104b


# Egy par tovabbi hasznos csomag
# choco install vscode
# choco install kubernetes-kompose
```