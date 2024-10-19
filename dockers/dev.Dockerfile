FROM nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04

WORKDIR /opt/   

COPY go1.23.2.linux-amd64.tar.gz /opt/

RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz
ENV PATH=$PATH:/usr/local/go/bin
RUN go version

WORKDIR /workspace/
