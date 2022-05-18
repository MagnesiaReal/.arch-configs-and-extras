#!/bin/sh

#full_ffmpeg(){
  #ffmpeg \
    #-f pulse -ac 2 -ar 44100 -i alsa_output.pci-0000_06_00.6.analog-stereo.monitor \
    #-f pulse -ac 2 -ar 44100 -i alsa_input.pci-0000_06_00.6.analog-stereo \
    #-f x11grab -framerate 60 -video_size 1024x768 -i :0.0+1920,312 \
    #-filter_complex "amix=inputs=2" \
    #-vcodec libx264 -preset veryfast -crf 18 \
    #-acodec libmp3lame -ar 44100 -q:a 1 \
    #"/home/magneciareal/Videos/Records/$(date +'%Y-%m-%d-%H:%M:%S').avi"
#}

full_ffmpeg(){
  ffmpeg \
    -f alsa -ac 2 -i pulse:0 \
    -f alsa -ac 2 -i pulse:1 \
    -f x11grab -framerate 60 -video_size 1920x1080 -i :0.0 \
    -filter_complex "amix=inputs=2" \
    -vcodec libx264 -preset veryfast -crf 18 \
    -acodec libmp3lame -ar 44100 -q:a 1 \
    "/home/magneciareal/Videos/Records/$(date +'%Y-%m-%d-%H:%M:%S').avi"
}


test_ffmpeg(){
  ffmpeg \
    -f x11grab -framerate 20 -video_size 1024x768 -i :0.0+1920,312 \
    -f alsa -i hw:0 \
    -vcodec libx264 -preset veryfast -crf 18 \
    -acodec libmp3lame -ar 44100 -q:a 1 \
    "/home/magneciareal/Videos/Records/test.mp4"
}

sys_ffmpeg(){
  ffmpeg \
    -f alsa -ac 2 -i pulse:0 \
    -f x11grab -framerate 60 -video_size 1920x1080 -i :0.0 \
    "/home/magneciareal/Videos/Records/$(date +'%Y-%m-%d-%H:%M:%S').mkv"
}


case $1 in
  -full)full_ffmpeg;;
  -sys)sys_ffmpeg;;
  -test)test_ffmpeg;;
esac
