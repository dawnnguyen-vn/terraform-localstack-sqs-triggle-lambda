FROM ubuntu:20.04

RUN apt-get update && \
      apt-get -y install sudo

RUN sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

RUN sudo apt-get update && sudo apt install -y wget

RUN wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

RUN gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

RUN sudo apt-get update && sudo apt-get install -y terraform

RUN sudo apt-get install -y python3-pip

RUN sudo pip install terraform-local

RUN sudo pip install awscli-local 

RUN adduser myuser

USER myuser

WORKDIR /app

ENTRYPOINT ["tail", "-f", "/dev/null"]
