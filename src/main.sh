# setup DSLR as a webcam, live stream to /dev/video0
# sudo apt install gphoto2 v4l2loopback-utils ffmpeg
# TODO: in rpi error using v4l2loopback, need to build from source

# load in v4l2 module, only once after reboot
# sudo modprobe v4l2loopback

# TODO: get key time zone automatically and only activate monitoring when it's coming

# open monitor channel
gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0 &
python3 ./live.py # monitoring input and running live object detection
# TODO: tune sensitivity, crop image input
# TODO: check if preset parameters and focus can remain

kill $(pidof ffmpeg) # kill the only one ffmpeg live process 
sleep 0.07 # give sys short time to get back control of device
# gphoto2 --set-config /main/capturesettings/capturemode=1
# gphoto2 --set-config /main/capturesetting/burstnumber=2
gphoto2 --capture-image-and-download # shot asap
mv capt0000.jpg $(date +%Y-%m-%d-%T).jpg
# TODO: run a separate cropping script for the image just created
# TODO: pull the table from flightaware and get enroute info
# TODO: save this picture to another location in the project

# refs
# ref: https://github.com/umlaeute/v4l2loopback/issues/216
# ref: https://ubuntu.pkgs.org/16.04/ubuntu-universe-i386/v4l2loopback-dkms_0.9.1-4_all.deb.html
# ref: https://www.raspberrypi.org/forums/viewtopic.php?t=253875
# ref: https://askubuntu.com/questions/856460/using-a-digital-camera-canon-as-webcam
# ref: https://medium.com/@y1017c121y/use-a-digital-camera-in-opencv-instead-of-webcam-d8445898e6c8

