# docker-kubernetes

```bash
cd ~
git clone https://github.com/shiwaforce/kubernetes-tanfolyam-demo.git

cd kubernetes-tanfolyam-demo

git config --global --unset user.name
git config --global --unset user.email

git config --global user.name "Anton KOVACH"
git config --global user.email "samplesemail"

git config credential.helper store

git pull
```

######

https://code.visualstudio.com/docs/setup/linux

```bash
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders

code

1. Docker kitisztitasa
docker system prune -a

2. minikube ujrainditasa
minikube stop
minikube delete
minikube config set memory 4096
minikube config set disk-size 10240MB
minikube config set vm-driver virtualbox
minikube start
minikube config set dashboard true
minikube config set ingress true

3. [ha mar volt nem kell] kubectx es kubens telepitese
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

$ kubectx
minikube

$ kubens
default
kube-public
kube-system

4. Test
minikube ip | grep 192.168

Bongeszobol:
www.192.168.56.101.xip.io

Valasz:
default backend - 404
OK!

5. Install helm

helm ls

```
