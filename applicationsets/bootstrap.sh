#!/bin/bash

k apply -f ./normal-apps/apps.yaml
k apply -f ./metallb/metallb-root.yaml