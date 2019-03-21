#!/bin/bash
#!/usr/bin/env python
#!/bin/sh
#!/usr/bin/curl

pip install flask
pip install flask-wtf
rm -rf Cloud_Lab2


python3 -m venv venv
source venv/bin/activate
az group create -l eastus --n sampleVmResourceGroup
az network vnet create -g sampleVmResourceGroup -n azure-sample-vnet --address-prefix 10.0.0.0/16 --subnet-name azure-sample-subnet --subnet-prefix 10.0.0.0/24
az network public-ip create -g sampleVmResourceGroup -n azure-sample-ip --allocation-method

az vm create -n MyVm \
        -g sampleVmResourceGroup \
        --image UbuntuLTS \
        --generate-ssh-key \
        --verbose \
        --admin-user toomey86 \
        --admin-password Password1234 \

az vm open-port \
        --resource-group sampleVmResourceGroup \
        --name MyVm \
        --port 8080 \
        --port 5000 \

        git clone https://github.com/Toomey86/Cloud_Lab2
        curl -o Flask_Server.py https://github.com/Toomey86/Cloud_Lab2
        chmod +x Flask_Server.py

pip install azure
pip install azure.mgmt
pip install psutil
git clone https://github.com/Toomey86/Cloud_Lab2
cd microblog
chmod +x Flask_server.py
#python3.5 Flask_Server.py
#python3.5 linuxVM.py
#python3.5 python_flak.py
