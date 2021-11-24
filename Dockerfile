# grepc Dockerfile

FROM ubuntu
MAINTAINER Stephen Von Worley <svonworl@ucsc.edu>

USER root
RUN echo '#!/bin/bash' >> /usr/local/bin/grepc
RUN echo 'grep -c $1 $2 > out.txt' >> /usr/local/bin/grepc
RUN echo '[ $? -le 1 ] && true' >> /usr/local/bin/grepc
RUN chmod a+x /usr/local/bin/grepc

CMD ["/bin/bash"]
