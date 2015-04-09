#!/bin/bash
#To add all /dev/sd* disks into cinder-volumes
for i in b c d e f g h i j k l m n o p q r s t u v w x;
do
	vgextend cinder-volumes /dev/sd$i;
done
