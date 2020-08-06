# K'BOS! 🛬

**Live High-Quality DSLR Capture Module for KBOS 22L/R Arrivals**  
***@iot @edgeai @tensorflow-lite @opencv @debian @rpi4b @coral @canon***  
Automatically capture high-res photos for approaching aircrafts on KBOS 22L/R.  

*v1.0 (August 05, 2020): Workable on x86 and ARMv7l, all clear on dependencies, Coral in transit.*  



<img src="./raw/misc/AF789.jpg" alt="drawing" style="width:500px;"/>




## TODO

- `crop.py` for auto cropping and quality enhancement
- Asset allocation! with proper naming and suggested flights
- Prep for LAMP server, simple static live webpage

- (DEP) Sentry for boarder field monitoring, when an airplane is approaching, initialize DSLR
    - Use videos in `raw_sentry` to identify the least power necessary for sentry monitoring
    - Test live performance
    - Crop live feed and picture in cv2, helpful in boosting performance?
    - Single image and video object detection, screenshot, test correct rate
    - Live monitoring and detection (only binary info req), test FPS
    - Set init trigger params for DSLR



## Stages Projected & Methodology

This project is projected to have multiple stages:
- DONE: Automatically capture high quality photos for any aircraft on approach on 22L/R 
- PENDING: Process photo: object detection and trimming raw inputs
- DONE: Fetch flight data: obtain live arrival data from FlightAware.com and identify flight
- PENDING: Build a server for live feeds based on LAMP
- PENDING: Flexibility to setup in a new environment, parameterized setups



## Notes

- Saves from DSLR `gphoto2 --list-all-files; gphoto2 --get-files=XXX-XXX`
- [tensorflow cross-compilation](https://www.tensorflow.org/lite/guide/build_rpi)
- [objdetapp example](https://github.com/datitran/object_detector_app)
- [tensorflow lite official guide](https://www.tensorflow.org/lite/guide/python)
- [tflite on raspian](https://learn.adafruit.com/running-tensorflow-lite-on-the-raspberry-pi-4/tensorflow-lite-2-0-setup)
- [docker ref](https://zhuanlan.zhihu.com/p/22382728)
- [docker ref](https://draveness.me/docker/)

