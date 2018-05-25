# apache-https
A small repository showing how to setup ssl on a docker image.

### Some good commands.

```
cd etc
./create_root_cert.sh
./create_domain_cert.sh myserver.local
```

```
sudo docker build -t myserver-image .
sudo docker run -dit --name myserver-container -p 8443:443 myserver-image
```

```
sudo docker container rm my-running-app -f
```

Lastly I add this little command so you can see which image you have in our setup and clean up with prune when your done. Notice that that command will remove all images in your environment so DO NOT RUN in production.

```
sudo docker images
sudo docker system prune -a
```
