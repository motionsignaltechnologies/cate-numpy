
###################################################################
# Builder image

FROM ubuntu:22.04 


RUN apt-get update && \
    apt-get install -y --no-install-recommends  \
    python3-dev python3-pip python3-setuptools 

ADD requirements.txt /
RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install -r requirements.txt