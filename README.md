# Docker Scripts

Helpful scripts for use with Docker image by name.

## Installation
[Clone](git clone git@github.com:richi1717/docker-scripts.git) this repo.  
I recommend installing in root.  If you choose to install somewhere else then make adjustments to  
your aliases.

Then run

```bash
$ chmod 755 docker-scripts/.docker-kill.sh && alias dk="~/docker-scripts/.docker-kill.sh"
$ chmod 755 docker-scripts/.docker-log.sh && alias dl="~/docker-scripts/.docker-log.sh"
```
Or simplified
```bash
$ chmod 755 docker-scripts/.docker-kill.sh && chmod 755 docker-scripts/.docker-log.sh && alias dk="~/docker-scripts/.docker-kill.sh" && alias dl="~/docker-scripts/.docker-log.sh"
```

## Use

Run
```bash
$ dk YOUR_DOCKER_IMAGE_NAME_HERE
$ dl YOUR_DOCKER_IMAGE_NAME_HERE
```
`dl` copies the string to your clipboard so you can press `cmd + v` to tail the logs as soon as the script is done.

It will then let you know it was successful if it finds the image name.  You don't have
to pass the entire name.  For example, say you have an image name of `supercalifloweristiceggspewalleydoses`

```bash
$ dk supercali
$ dl supercali
```

Just make sure the name does not match a different image name.

Feel free to make improvements or add new scripts.  

