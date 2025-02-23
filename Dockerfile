FROM almalinux:latest
WORKDIR /src
EXPOSE 3010
COPY . /src

RUN dnf update -y
RUN dnf module install nodejs:18 -y

RUN yum -y install wget
RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox-0.12.6-1.centos8.x86_64.rpm
RUN dnf install ./wkhtmltox-0.12.6-1.centos8.x86_64.rpm -y

RUN npm install -g yarn
RUN yarn install

CMD ["npm", "start"]



# FROM ubuntu:latest
# WORKDIR /src
# EXPOSE 3010
# COPY . /src

# RUN apt update -y
# RUN apt install curl -y
# RUN curl -s https://deb.nodesource.com/setup_18.x | bash
# RUN apt install nodejs -y

# RUN apt install wget -y
# RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox-0.12.6-1.centos8.x86_64.rpm
# RUN apt install ./wkhtmltox-0.12.6-1.centos8.x86_64.rpm -y

# RUN npm install -g yarn
# RUN yarn install

# CMD ["npm", "start"]