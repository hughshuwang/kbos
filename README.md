# K'BOS! 🛬

**Live High-Quality DSLR Capture Module for KBOS 22L/R Arrivals**  
***@iot @edgeai @tensorflow-lite @opencv @debian @rpi4b @coral @canon***  
Automatically capture high-res photos for approaching aircrafts on KBOS 22L/R.  




<img src="./raw/misc/AF789.jpg" alt="drawing" style="width:500px;"/>




## TODO

- Save recordings from DSLR for offline tests `gphoto2 --list-all-files; gphoto2 --get-files=XXX-XXX`
- Test dependencies and DSLR monitoring on RPi4B
- Generate a subprocess in python for enabling the monitor mode for DSLR
- Print out the items exported from the tf module
- Once an airplane is detected, end the subprocess, generate parameters for the capture, execute multiple shots
- Save photos in a location, allocation some time for auto-cropping and deletion

- Test the records from DSLR
- DSLR initialized, capture at the fastest rate and then process right after seq

- (DEP) Sentry for boarder field monitoring, when an airplane is approaching, initialize DSLR
    - Use videos in `raw_sentry` to identify the least power necessary for sentry monitoring
    - Test live performance
    - Crop live feed and picture in cv2, helpful in boosting performance?
    - Single image and video object detection, screenshot, test correct rate
    - Live monitoring and detection (only binary info req), test FPS
    - Set init trigger params for DSLR




## Stages Projected & Methodology

This project is projected to have multiple stages:
- Automatically capture high quality photos for any aircraft on approach on 22L/R 
- Process photo: object detection and trimming raw inputs
- Fetch flight data: obtain live arrival data from FlightAware.com and identify flight
- Gather infomation online on the server side
- Flexibility to setup in a new environment, parameterized setups



## Dependencies

- [gphoto2](http://www.gphoto.org/doc/manual/) for capture and *preview*: 
    - `gphoto2 --auto-detect` to check connection
    - `--hook-script` for processing preview image
- ffmpeg for video format transition and processing


## Notes

- `pip3 install tensorflow` not working in arch linux
- Cross compile in x86 for arm debian/raspbian [ref](https://www.tensorflow.org/lite/guide/build_rpi)
- [objdetapp](https://github.com/datitran/object_detector_app)
- [tensorflow lite](https://www.tensorflow.org/lite/guide/python)
- [debianarm](https://learn.adafruit.com/running-tensorflow-lite-on-the-raspberry-pi-4/tensorflow-lite-2-0-setup)
- [docker](https://zhuanlan.zhihu.com/p/22382728)
- [docker](https://draveness.me/docker/)


