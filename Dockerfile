FROM debian:bookworm

COPY . .

WORKDIR /

RUN apt-get update && apt-get install -y wget git

RUN mkdir -p ~/miniconda3 && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh && bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 && rm ~/miniconda3/miniconda.sh

RUN git clone https://github.com/dbarnett/python-helloworld 