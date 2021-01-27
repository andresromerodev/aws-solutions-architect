#!/bin/bash

####################################################
#### USE THIS FILE TO OPEN A NEW SSH CONNECTION ####
####################################################

# $1 is an argument for the IP Address of the EC2 instance

ssh -i C:/Users/andre/dev/aws_solutions_architect.pem ec2-user@$1