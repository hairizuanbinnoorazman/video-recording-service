# Setting up of the service on Google Cloud Engine

Use kill <process number> to murder the process
Use `ps` command to find out the list of processes at the moment

Start xvfb virtual screen
```
Xvfb :0 -screen 0 1024x768x24 > /dev/null &
```

Check screen's existance
```
xdpyinfo -display :0
```

Ensure that this is replicated into script
```
export DISPLAY=:0.0
```

Start the pulseaudio server
```
pulseaudio -D --exit-idle-time=-1
```

Load the virtual sink and set it as default
```
pacmd load-module module-virtual-sink sink_name=v1
pacmd set-default-sink v1
```

Set the monitor of v1 sink to be the default source
```
pacmd set-default-source v1.monitor
```

Begin grabbing the video - only video
```
avconv -f x11grab -video_size 1024x768 -i :0.0 -r 30 ./test1.mp4
```

**Begin grabbing the video - both video and audio**
Tips on how to improve video and audio quality
- Move framerate before video input
- Add super huge thread queue size - Set up size of memory queue as a sort of buffer
- Pretty smooth animation but frame rate is bad, audio is trash after a while
- Repeat the thread queue size parameter twice for both the audio and video section of the command
```
avconv -threads 0 -thread_queue_size 2048 -f x11grab -video_size 1024x768 -r 30 -i :0.0 -threads 0 -thread_queue_size 2048 -f pulse -i default ./test1.mp4
```