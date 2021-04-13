#!/bin/bash

# Install nginx sever

sudo apt-get update
sudo apt-get install nginx

sudo cp nginx.conf /etc/nginx

sudo sevice nginx start
