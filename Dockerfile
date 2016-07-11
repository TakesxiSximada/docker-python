FROM takesxisximada/python:base
MAINTAINER TakesxiSximada <sximada@gmail.com>
ARG VERSION
RUN apt-get update -y
RUN apt-get install -y python$VERSION python$VERSION-dev python-virtualenv python-dev
RUN if [ `echo $VERSION | cut -d "." -f 1` -eq "3" ]; then apt-get install -y python3-pip; else apt-get install -y python-pip; fi
