#!/bin/bash
dir=$1
shift
jail_image="$(cat $dir/image)"

if [ -z "$jail_image" ]; then
    echo "jail $1 does not contain an image file" >&2;
    exit 1;
fi;
sudo docker.io run -u 1000 -it -v $(abspath $dir/code):/code:ro -v $(abspath $dir/data):/data "$jail_image" "$@"
