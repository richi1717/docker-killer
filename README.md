# Docker Killer

A script to kill a Docker image by name.

## Installation
Either copy and paste the text from `.docker-kill.sh` or clone this repo and move to `~`.

Then run

```bash
$ chmod 755 ~/.docker-kill.sh && alias dk="~/.docker-kill.sh"

```

## Use

Run
```bash
$ ~/.docker-kill.sh YOUR_DOCKER_IMAGE_NAME_HERE
```

It will then let you know it was successful if it finds the image name.  You don't have
to pass the entire name.  IE say you have an image name of `supercalifloweristiceggspewalleydoses`

```bash
$ ~/.docker-kill.sh supercali
```

Just make sure the name does not match a different image name.
 

