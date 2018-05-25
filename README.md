# apache-https
A small repository showing how to setup ssl on a docker image.

### Installation

First of we need to create some certificates. The first one is done by running the create root certificate command and this will ask you some question about the your made up certificate authority.

```
cd etc
./create_root_cert.sh
cd ..
```

After that you run the command to create the domain specific certificate and prepare the docker image.
```
cd etc
./create_domain_cert.sh myserver.local
cd ..
```

Building your server image is just running the command below giving the image a tag of your liking.
```
sudo docker build -t myserver-image .
```

Next up we start the image and see the result of our work.
```
sudo docker run -dit --name myserver-container -p 8443:443 myserver-image
```

Lastly I add this little command so you can see which image you have in our setup and clean up with prune when your done. Notice that that command will remove all images in your environment so DO NOT RUN in production.
```
sudo docker images
sudo docker system prune -a
```
