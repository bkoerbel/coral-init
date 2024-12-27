# https://github.com/tnyeanderson/zet/tree/main/20240114030411

FROM ubuntu

WORKDIR /app

RUN apt-get update && apt-get install -y wget dfu-util

RUN wget https://github.com/google-coral/libedgetpu/raw/master/driver/usb/apex_latest_single_ep.bin

CMD ["dfu-util", "-D", "apex_latest_single_ep.bin", "-d", "1a6e:089a", "-R"]
