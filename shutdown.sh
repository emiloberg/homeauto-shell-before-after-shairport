#!/bin/bash

curl -X PUT http://pi-main.local:1880/speaker/${HOSTNAME}/power/off
