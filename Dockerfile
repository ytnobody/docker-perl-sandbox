FROM ubuntu
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN apt-get update && apt-get install make gcc git patch curl -y --force-yes
RUN curl -L http://is.gd/plenvsetup | bash

ADD build /opt/build
RUN chmod +x /opt/build
RUN ["/opt/build"]

CMD ["/bin/bash"]
