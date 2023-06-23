# FROM almalinux:latest
# WORKDIR /src
# EXPOSE 3010
# COPY . /src

# RUN dnf update -y
# RUN dnf module install nodejs:16 -y

# RUN yum -y install wget
# RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox-0.12.6-1.centos8.x86_64.rpm
# RUN dnf install ./wkhtmltox-0.12.6-1.centos8.x86_64.rpm -y

# RUN npm install -g yarn
# RUN yarn install

# CMD ["npm", "start"]



FROM ubuntu:latest
WORKDIR /src
EXPOSE 3010
COPY . /src

RUN apt update -y
RUN curl -s https://deb.nodesource.com/setup_18.x | sudo bash
RUN apt install nodejs -y

RUN npm install -g yarn
RUN yarn install

CMD ["npm", "start"]