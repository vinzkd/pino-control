#!/bin/bash

docker start pino_brain && docker exec -it -u ubuntu pino_brain /bin/bash -c "source /opt/ros/kilted/setup.bash && /home/ubuntu/pino-control/start_controller.sh"
