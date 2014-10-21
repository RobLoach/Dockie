#!/bin/bash
set -e

# Environment Variables
SSH_ROOT_PASSWORD=${SSH_ROOT_PASSWORD:-"root"}

# Change the password
echo "root:$SSH_ROOT_PASSWORD" | chpasswd
