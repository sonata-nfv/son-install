#!/bin/bash
terraform get
terraform plan -var="env=sp4qual" -var="vim_type=openstack" -var="placement=ptin"
terraform apply
terraform output inventory > hosts
