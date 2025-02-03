FROM debian:bookworm

RUN apt-get update && apt-get install -y wget git

RUN mkdir -p /opt/miniconda3

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh -O /opt/miniconda3/miniconda.sh

RUN bash /opt/miniconda3/miniconda.sh -b -u -p /opt/miniconda3

RUN rm /opt/miniconda3/miniconda.sh

ENV PATH="/opt/miniconda/bin:$PATH"

WORKDIR /

RUN git clone https://github.com/dbarnett/python-helloworld.git 



CMD ["tail", "-f", "/dev/null"]