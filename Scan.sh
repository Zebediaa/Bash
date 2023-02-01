#!/bin/bash

echo -n "Enter the 3 first element of the IP : "
read ip

for i in {0..256}
do
 if (ping -W 1 -c 1 $ip.$i); then
  echo "$ip.$i" >> online.txt
 else
  echo "$ip.$i" >> not_online.txt
 fi
done
