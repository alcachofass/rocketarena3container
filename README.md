# rocketarena3container
Rocket Arena 3 v1.8 mod running in a container. 

## Notes
- Container is built from ubuntu:latest and uses the ioquake3 package. Support for i386 architecture is required to run the RA3 dedicated server launcher "ra3ded". Without it, version mismatch errors will occur.
- You must pass the **/arena** and **/baseq3** folders as volume mounts. Game pk3 files are not included here. Instead, they are available in the original game media, PR 1.32, and ra3180.zip 
- _ra3server.sh_ is a sample start-up script that should be placed in the source **/arena** folder. The container entrypoint references this file. 
- Refer to the _docker-compose.yml_ file for an example with volume mounts. 

## Other
https://hub.docker.com/repository/docker/alcachofass/ra3server
