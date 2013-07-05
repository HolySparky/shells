#!/bin/bash
#To copy the isa_id into a remote server 
for i in $@
do 
    echo $i
    ssh -t $i@$i "cd ~/.ssh;
                    ssh-keygen -t rsa -C "your_email@example.com" "
    scp $i:~/.ssh/*.pub .
done
