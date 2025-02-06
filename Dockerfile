FROM --platform=linux/amd64 debian:bookworm

RUN apt-get update && apt-get install -y wget git

WORKDIR /

RUN mkdir -p ~/miniconda3

# RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh -O /opt/miniconda3/miniconda.sh
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh


RUN bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3

RUN rm ~/miniconda3/miniconda.sh


RUN git clone https://github.com/dbarnett/python-helloworld.git 



CMD ["tail", "-f", "/dev/null"]