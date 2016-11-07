FROM ubuntu:16.04

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3 && \
    apt-get update -y && \
    apt-get install python-pip build-essential python3-dev python-dev ruby curl -y

RUN pip install --upgrade pip && \
    pip install --upgrade pygments

RUN curl -sSL https://get.rvm.io | \
        bash -s stable --gems=nanoc,kramdown,nokogiri,rainpress,uglifier
