# Maqetta docker image
For Maqetta --> [here](http://maqetta.org)

## Map to host following
EXPOSE 50000
VOLUME /maqetta/users

## Usage
If you typed like this;
```
docker run -d -p 3000:50000 -v /data/users:/maqetta/users owlab/maqetta
```
In a browser, **open http://<host IP>:3000/maqetta**

