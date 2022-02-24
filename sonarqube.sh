#!/bin/bash

#description: --- sonarqube installation ---
    #Author: group3
    #date:02-22-2022


    echo "we are installing sonarqube please be patient..."

    sleep 3
    sudo yum update -y

    sudo yum install java-11-openjdk-devel -y

    sudo yum install java-11-openjdk -y

    cd /opt

    sudo yum install wget -y

    sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

    sudo yum install unzip -y

    sudo unzip /opt/sonarqube-9.3.0.51899.zip

    sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

    cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

    ./sonar.sh start

    sudo firewall-cmd --permanent --add-port=9000/tcp

    sudo firewall-cmd --reload

    echo "installation complete successfully"
