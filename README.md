# apache-https
A small repository showing how to setup ssl on a docker image.

### Some good commands.

```
sudo docker build -t my-apache2 .
sudo docker run -dit --name my-running-app -p 8443:443 my-apache2
```

```
sudo docker container rm my-running-app -f
```

Lastly I add this little command so you can see which image you have in our setup and clean up with prune when your done. Notice that that command will remove all images in your environment so DO NOT RUN in production.

```
sudo docker images
sudo docker system prune -a
```
