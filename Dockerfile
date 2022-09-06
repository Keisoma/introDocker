FROM ubuntu
WORKDIR workspace
COPY . .
ENV JUPYTER_ENABLE_LAB=yes
RUN apt update -y && apt install -y python3 && apt install -y python3-pip \
    && apt install -y vim && apt install -y git \
    && apt install -y virtualenv  \
    && git config --global user.name = "" \
    && git config --global user.email = "" \
    && pip install -r requirements.txt
RUN apt install -y jupyter  \

CMD jupyter notebook
