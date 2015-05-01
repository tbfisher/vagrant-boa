# vagrant-boa

Local [BOA](https://github.com/omega8cc/boa) using [Vagrant](https://www.vagrantup.com/).

Thanks to [theodorosploumis](https://github.com/theodorosploumis) for [figuring out how to do this]((https://github.com/omega8cc/boa/wiki/Local-BOA-with-Vagrant).

## Requirements

-   Vagrant
-   [Vagrant Provider](https://docs.vagrantup.com/v2/providers/)

Vagrant plugins

    vagrant plugin install vagrant-hostsupdater
    vagrant plugin install vagrant-auto_network

## Setup

Read and modify `Vagrantfile`. Most will just need to add hostnames of any sites to install.

Create and provision the virtual machine

    vagrant up

## Usage

    vagrant ssh
    su -s /bin/bash o1; cd
    drush @hostmaster uli
