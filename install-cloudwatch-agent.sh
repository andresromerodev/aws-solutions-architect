#!/bin/bash

wget -O awslogs-agent-setup.py https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py

sudo python ./awslogs-agent-setup.py --region us-east-1