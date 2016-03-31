#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get -y upgrade

# Install base packages
apt-get -qq update && apt-get -qyy upgrade && apt-get -qqy install \
    apt-transport-https ca-certificates curl iptables sudo wget mc vim git mcrypt dmsetup  openssh-client \
    mc sudo vim git mcrypt python python-setuptools procps mysql-client htop


# install supervisor
easy_install supervisor
easy_install supervisor-stdout
easy_install pip
pip install  supervisor-logging

# cleanup
apt-get clean autoclean
apt-get autoremove -y
rm -rf /var/lib/{apt,cache,log}/
