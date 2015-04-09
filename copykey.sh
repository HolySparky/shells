#!/bin/bash
#To copy the isa_id into a remote server 

echo "You start with $# positional parameters"

user="ubuntu"
host=

if [ "$1" != "" ];then 
   user=$1
   echo "user = $user"
else
    echo "format : [username][host1][host2]...[hostn]"
fi

shift

for i in $@; do
    host=$i
    if ssh $user@$host test -f ~/.ssh
    then
        echo "remote folder exists"
        cat ~/.ssh/id_rsa.pub | ssh $user@$host " cat >> ~/.ssh/authorized_keys"
    else
        echo "remote .ssh file not found, creating folder"
        cat ~/.ssh/id_rsa.pub | ssh $user@$host "mkdir ~/.ssh; cat >> ~/.ssh/authorized_keys"
    fi
done
