#!/bin/bash
#ansible-playbook ping2.yml  -e "hosts=./servers" -K
#the following line works with one argument"

ansible-playbook -e "hosts=$1"  ping2.yml -K
#Another line was added
