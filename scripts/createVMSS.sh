#!/bin/bash

RG="test-rg"

az vmss create --name vmssagentspool \
  --resource-group $RG \
  --image Ubuntu2204 \
  --vm-sku Standard_B2s \
  --storage-sku StandardSSD_LRS \
  --authentication-type SSH \
  --generate-ssh-keys \
  --instance-count 0 \
  --disable-overprovision \
  --upgrade-policy-mode manual \
  --single-placement-group false \
  --platform-fault-domain-count 1 \
  --load-balancer ""
