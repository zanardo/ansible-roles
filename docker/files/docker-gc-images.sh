#!/bin/bash

mapfile -t images < <(docker images | sed 1d);
for image in "${images[@]}";
do
	name=$(echo "$image" | awk '{print $1}');
	tag=$(echo "$image" | awk '{print $2}');
	imageid=$(echo "$image" | awk '{print $3}');
	if [ "$name" == "<none>" ] || [ "$tag" == "<none>" ]; then
		docker rmi "$imageid";
	fi;
done
