FROM ubuntu
ADD https://raw.githubusercontent.com/ybh1998/docker-quark-cpuminer/master/build.sh build.sh
RUN chmod +x build.sh
RUN ./build.sh
EXPOSE 80
RUN minerd -a quark --url stratum+tcp://stratum.f2pool.com:3333 -u scaffrey.test -p test
CMD minerd -a quark --url stratum+tcp://stratum.f2pool.com:3333 -u scaffrey.test -p test
