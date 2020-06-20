FROM tensorflow/tensorflow:1.7.0

LABEL maintainer="Julian Derungs <derunju1@students.zhaw.ch>"

WORKDIR /tensorflow

ADD src .

CMD cd /tensorflow && ./train.sh