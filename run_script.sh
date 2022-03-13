#!/bin/bash

set -e

export GITLAB_ROOT_PASSWORD="source_me_from_secret_manager"

ansible-playbook -vvv -i inventory.yml playbook.yml -e GITLAB_ROOT_PASSWORD='{{ lookup("env", "GITLAB_ROOT_PASSWORD") }}'

echo "Variable GITLAB_ROOT_PASSWORD is:"
echo "$GITLAB_ROOT_PASSWORD"
