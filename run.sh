docker run --rm \
           -v /media/usbraid/docker/ruby/myapp:/home \
           -p 9425:3000 \
           -it paperinik/rpi-rails rails s -b 0.0.0.0
