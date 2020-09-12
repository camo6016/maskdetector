FROM ubuntu
RUN apt update && \
    export DEBIAN_FRONTEND=noninteractive && \
    ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
    apt-get install -y tzdata && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    apt install -y python3 && \
    apt install -y python3-pip && \
    apt install -y git && \
    apt install -y libglib2.0-0 && \
    apt install -y libgl1-mesa-glx && \
    pip3 install dash && \
    pip3 install tensorflow && \
    pip3 install imutils && \
    pip3 install opencv-contrib-python
RUN git clone https://github.com/camo6016/maskdetector.git
CMD python3 maskdetector/DetectCode/WebTest.py
