#!/bin/bash
#To copy the isa_id into a remote server 
for i in c1 c2 c3 c4 c5
do 
    echo $i
    scp /Users/eaglezpf/.ssh/id_rsa.pub $i@$i:/tmp/eagle.pub
    ssh -t $i@$i "mkdir ~/.ssh;
                    cat /tmp/eagle.pub >> .ssh/authorized_keys;
    		        rm /tmp/eagle.pub"
done
