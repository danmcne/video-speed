#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 input_video output_video speed_factor"
  echo "Example: $0 input.mp4 output.mp4 1.1"
  exit 1
fi

input_video=$1
output_video=$2
speed_factor=$3

# Use ffmpeg to adjust the video and audio speed without changing the pitch
ffmpeg -i "$input_video" \
  -filter_complex "[0:v]setpts=PTS/$speed_factor[v];[0:a]atempo=$speed_factor[a]" \
  -map "[v]" -map "[a]" \
  "$output_video"

