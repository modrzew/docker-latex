FROM debian:sid
MAINTAINER Modrzew <me@modriv.net>

RUN apt-get update
RUN apt-get install -y \
    texlive-latex-base texlive-xetex latex-xcolor texlive-math-extra \
    texlive-latex-extra texlive-fonts-extra texlive-xetex \
    curl wget git fontconfig make uuid-runtime

ADD process.bash /root/
RUN chmod +x /root/process.bash

ENTRYPOINT ["/root/process.bash"]

