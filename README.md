# SSH-Server Docker Image

This is a small & simple SSH server docker image, mostly for use as an SCP target.

## Run command example

```bash
docker run -p 0.0.0.0:8020:8020 --name ssh-server -e PASSWORD=password -e PORT=8020 ssh-server
```


