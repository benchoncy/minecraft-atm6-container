# Minecraft All The Mods 6 Server Container

To build:
```
docker build -t mc-atm6 .
```

To Run:
```
docker run -d -p 25565:25565 --name <NAME> -v <VOLUME>:/srv/SIMPLE-SERVER-FILES mc-atm6:latest
```