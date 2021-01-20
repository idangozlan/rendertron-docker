# Rendertron docker
### [idangozlan/rendertron](https://hub.docker.com/repository/docker/idangozlan/rendertron)

This repo contains dockerization files for [Google's Rendertron](https://github.com/GoogleChrome/rendertron).

Intentionally, this Docker image will install latest Rendertron version when it spins up (And you might want to take care of a little delayed rolling out policy to prevent healthchecker fails / failing requests till it's up).

Any feedback / contributions are welcome.

### Usage
`docker run -it -p 3000:3000 --name rendertron --rm idangozlan/rendertron`

### Options
Feel free to skip the update process when spinning up the container by adding `SKIP_RENDERTRON_UPDATE` set to `true` (or anything else), for ex:
`docker run -it -e SKIP_RENDERTRON_UPDATE=true -p 3000:3000 --name rendertron --rm idangozlan/rendertron:1.0.0`
