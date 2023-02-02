#!/bin/bash

echo -n "Enter the port : "
read port

re='^[0-9]+$'

if [[ $port =~ $re ]] ; then

  echo "Building the app"
  docker build . -t "devoir"

  docker run -d -p$port:5000 --name Devoir_container  devoir
 else
  echo "The port is not valid..."
fi
