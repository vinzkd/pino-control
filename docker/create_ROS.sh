ROS_IMAGE_NAME="ros:kilted-ros-base"
CONTAINER_NAME="pino_brain"

docker run -it \
	--name "$CONTAINER_NAME" \
	--device /dev/ttyACM0:/dev/ttyACM0 \
	--network host \
	-e DISPLAY="$DISPLAY" \
	-v /home/bmo/pino-control:/home/ubuntu/pino-control \
	"$ROS_IMAGE_NAME" \
	/bin/bash

#docker run -it \
#	--name "$CONTAINER_NAME" \
#	--device /dev/ttyACM0:/dev/ttyACM0 \
#	-u ros \
#	--network host \
#	-e DISPLAY="$DISPLAY" \
#	-v /home/bmo/.Xauthority:/home/ros/.Xauthority:ro \
#	-v /home/bmo/pino-control:/home/ros/pino-control \
#	"$ROS_IMAGE_NAME" \
#	/bin/bash
