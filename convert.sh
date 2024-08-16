#!/bin/bash

input_file=${1:-/dev/stdin}
output_file=${2:-/dev/stdout}

convert "$input_file" \
    -resize '1448x1072^' \
    -gravity center \
    -extent 1448x1072 \
    -rotate 90 \
    -depth 8 \
    -colorspace gray \
    -dither FloydSteinberg \
    "$output_file"
