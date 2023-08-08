#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Please give 2 argument input filename and output filename"
    exit 1
fi

input_vid=$1
output_gif=$2

ffmpeg() {
    docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) --platform linux/amd64 jrottenberg/ffmpeg:4.1-alpine "$@"
}

ffmpeg -i ${input_vid} \
    -vf "fps=10,scale=1024:-1:flags=lanczos" \
    -c:v gif \
    ${output_gif}
