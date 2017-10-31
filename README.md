# Ruby On Rails

![docker_logo](https://raw.githubusercontent.com/brunocantisano/rpi-rails/master/files/docker.png)![docker_rails_logo](https://raw.githubusercontent.com/brunocantisano/rpi-rails/master/files/logo-rubyonrails.png)![docker_paperinik_logo](https://raw.githubusercontent.com/brunocantisano/rpi-rails/master/files/docker_paperinik_120x120.png)

This Docker container implements a Ruby On Rails container.

 * Raspbian base image: paperinik/rpi-ruby.
 
### Installation from [Docker registry hub](https://registry.hub.docker.com/u/paperinik/rpi-rails/).

You can download the image with the following command:

```bash
docker pull paperinik/rpi-rails
```

Definition
----

It is a great solution for communities and companies wanting to privately host their own chat service or for developers looking forward to build and evolve their own chat platforms.

# How to use this image

The Ruby on Rails instance starts listening on the default port of 3000 on the container.

1) If you'd like to create folder, you can run with interative mode:
```bash
    docker run -v /media/usbraid/docker/ruby:/home \
               -it paperinik/rpi-rails rails new dev
```
----

2) If you'd like to be able to access the instance directly at standard port on the host machine, you can run with interative mode:
```bash
    docker run --name rubyonrails 
               -p 9425:3000 \
               -v /media/usbraid/docker/ruby/dev:/home \
               -d paperinik/rpi-rails 
```
----

3) Then, access it via `http://localhost:9415` in a browser.  Replace `localhost` in `ROOT_URL` with your own domain name if you are hosting at your own domain.
