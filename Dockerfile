# grepc Dockerfile

FROM ubuntu
MAINTAINER Stephen Von Worley <svonworl@ucsc.edu>

USER root
RUN cd /usr/local/bin
RUN echo "#!/bin/bash" >> grepc
RUN echo "grep -c < in.txt > out.txt" >> grepc
RUN chmod a+x /usr/local/bin/grepc

USER ubuntu

CMD ["/bin/bash"]
