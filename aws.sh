#!/usr/bin/env bash

# ~/aws.sh

# Removed user's cached credentials
# This script might be run with .dots, which uses elevated privileges
sudo -K

echo "------------------------------"
echo "Setting up AWS."
echo "This script requires pip3."
echo "See the pydata.sh script."

echo "------------------------------"

echo "Updating AWS modules."

# Create a Python3 data environment

pip3 install boto
pip3 install awscli
pip3 install saws

echo "------------------------------"
echo "TODO: Update .aws/ with your AWS credentials and region, or run aws --configure."
echo "Script completed."
