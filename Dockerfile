FROM ubuntu
ADD https://raw.githubusercontent.com/ybh1998/docker-quark-cpuminer/master/build.sh build.sh
RUN chmod +x build.sh
RUN ./build.sh
EXPOSE 80
CMD minerd -a quark --url stratum+tcp://us-east.stratum.bitcoin.cz:3333 -u SCaffrey.test -p test
