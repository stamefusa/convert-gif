#!/bin/sh
rm -f tmp.mp4
rm -f palette.png
rm -f out.gif
ffmpeg -ss 00:00:33 -i ./img/22.MP4 -vf fps=3,scale=480x270 -frames:v 10 tmp.mp4
ffmpeg -i tmp.mp4 -vf palettegen palette.png
ffmpeg -i tmp.mp4 -i palette.png -filter_complex paletteuse out.gif
