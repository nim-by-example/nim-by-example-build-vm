FROM ubuntu:16.04

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3 && \
    apt-get update -y && \
    apt-get install python-pip build-essential python3-dev python-dev ruby curl git -y

RUN pip install --upgrade pip && \
    pip install --upgrade pygments

RUN curl -sSL https://get.rvm.io | \
        bash -s stable --gems=nanoc,kramdown,nokogiri,rainpress,uglifier

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  
