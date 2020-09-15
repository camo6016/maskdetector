# Mask Detection Application for use on Kuberntes 

## Background

The application will pull RTSP steams from Android Phones running the "RTSP Camera Server" app. It will display multipul cameras on a single webpage with the number of cameras shown on the webpage dictated by the number of statefull replica sets.


## Deploying A Single Mask Detector Container in Docker

The container image is hosted on [Docker Hub](https://hub.docker.com/r/camo6016/maskdetector) starts without variables. 

1. Deploy the container
```bash
docker run -d -p 8080:8080 camo6016/maskdetector:1.3
```
2. Access the url at *http://<hostipaddress>:8080/*. A single page with "Webcam Test" should apear.
  
3. Start "RTSP Camera Server" App on and an Android Device. Start the Camera in the app and ensure that the IP address is accessable from the container.

4. Direct the container to access the video stream of the Android device by sending *http://<hostipaddress>:8080/setcamera/<IPAddressofAndroidCamera>*
