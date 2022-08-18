# Terraform
* [Tutorial - doc](https://learn.hashicorp.com/terraform?utm_source=terraform_io)

### Ubuntu:

```curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt install terraform
```
___

### Windows:
```
choco install terraform
```
___

# Ansible
* [Tutorial - doc](https://docs.ansible.com/ansible/latest/getting_started/index.html)

### Ubuntu:
```
sudo apt update <br>
sudo apt install software-properties-common <br>
sudo add-apt-repository --yes --update ppa:ansible/ansible <br>
sudo apt-get install ansible
```
___

### Windows:
```
python -m pip install --user ansible <br>
python -m pip install --user paramiko
```

# AWS CLI:

* [Tutorial - doc](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html)


# Test de cargas com Locust
 * documentation: [Locust-guide](https://docs.locust.io/en/stable/quickstart.html) <br>
 * writing file Locust: [Locust-file](https://docs.locust.io/en/stable/writing-a-locustfile.html)

Windows | Ubuntu | MacOS:

pip install locust <br>
 
- para testar execute o terminal: locust -f testDeCarga.py
para verificar todos ps ips na maquina: **ip addr show** (*terminal do ubuntu) <br>
- Copie seu endereço ip eth0: 100.777.8.99/8089 (*Acessar a interface do Locust) 
___

## Ferramentas de Build para Visual Studio 2022

* [download-link](https://visualstudio.microsoft.com/pt-br/downloads/)
___

# Docker

### Ubuntu:

* [Guia de instalação Docker Linux](https://docs.docker.com/engine/install/ubuntu/)
___

### Windows:

* [Guia de instalação Docker](https://docs.docker.com/desktop/install/windows-install/)

* [Guia de instalação WSL2](https://docs.microsoft.com/pt-br/windows/wsl/install)


### MacOS:

* [Guia de instalação Docker MacOS](https://docs.docker.com/desktop/install/mac-install/)
