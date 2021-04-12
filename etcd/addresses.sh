#!/bin/bash

echo [control_servers] > autohost.txt

for instance in controller-0 controller-1 controller-2; do
EXTERNAL_IP=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=$instance" --query 'Reservations[*].Instances[*].[PublicIpAddress]' --output text)

echo $instance ansible_host=$EXTERNAL_IP >> autohost.txt

done

echo [workers_servers] >> autohost.txt

for instance in worker-0 worker-1 worker-2; do
EXTERNAL_IP=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=$instance" --query 'Reservations[*].Instances[*].[PublicIpAddress]' --output text)


echo $instance ansible_host=$EXTERNAL_IP >> autohost.txt

done
