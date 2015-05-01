#!/bin/bash -eu

if [ "$EUID" -ne "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

if [ -f /root/.vagrant_provision_boa ]; then
  echo "BOA is already installed"
  exit 0
fi

# https://github.com/omega8cc/boa/blob/master/docs/INSTALL.txt
cd;wget -q -U iCab http://files.aegir.cc/BOA.sh.txt;bash BOA.sh.txt
boa in-stable local hostmaster@aegir.local mini

date > .vagrant_provision_boa
