#!/bin/bash

echo "orange123" | sudo chown ubuntu:ubuntu /dev/ttyACM0

python3 /home/ubuntu/pino-control/pino_controller.py
