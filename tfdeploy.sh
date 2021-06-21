#!/bin/bash

DEV_GIT_BRANCH="dev"
PROD_GIT_BRANCH="main"


if [ -z $1 ]
then
    echo "You can't select an empty environment."
    echo "Usage: tfdeploy <environment> - Ex.: tfdeploy dev"
else
    if [ $1 == "dev" ]
    then
        echo "You are in [ $1 ] environment."
        #My Code Here
        git checkout $DEV_GIT_BRANCH
        rm -rf .terraform
        terraform init -backend-config=dev/backend.dev.hcl
        terraform apply -var-file=dev/terraform.tfvars --auto-approve
    elif [ $1 == "prod" ]
    then
        echo "You are in [ $1 ] environment."
        #My Code Here
        git checkout $PROD_GIT_BRANCH
        rm -rf .terraform
        terraform init -backend-config=production/backend.production.hcl
        terraform apply -var-file=production/terraform.tfvars --auto-approve
    else
        echo "Only dev/prod environments are allowed. "
        echo "Usage: tfdeploy <environment> - Ex.: tfdeploy dev"
    fi
fi