#!/bin/bash
aws configure set aws_access_key_id "" --profile siva && aws configure set aws_secret_access_key "" --profile siva && aws configure set region "us-west-2" --profile siva && aws configure set output "json" --profile siva
aws s3api put-object --bucket azure-devops-sprint-boot-output --key /home/vsts/work/1/s/target/spring-boot-web.jar
