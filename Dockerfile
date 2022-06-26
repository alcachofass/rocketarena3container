FROM ubuntu:latest

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y ioquake3-server libc6:i386 libncurses5:i386 libstdc++6:i386 

RUN useradd -d /home/q3user_svc -m -s /sbin/nologin q3user_svc

COPY ra3ded       /usr/lib/ioquake3/ra3ded

USER q3user_svc

ENTRYPOINT ["/bin/bash", "/usr/lib/ioquake3/arena/ra3server.sh"]
