FROM ubi8/ubi
RUN  yum update -y && yum install -y java-11-openjdk jq curl


WORKDIR /opt
RUN curl -LO https://dlcdn.apache.org/zookeeper/zookeeper-3.9.1/apache-zookeeper-3.9.1-bin.tar.gz
RUN tar -xvf apache-zookeeper-3.9.1-bin.tar.gz
RUN rm -rfv apache-zookeeper-3.9.1-bin.tar.gz
RUN mv apache-zookeeper-3.9.1-bin zookeeper
RUN mkdir /opt/data/zookeeper -p
RUN touch /opt/data/zookeeper/myid && echo 1 > /opt/data/zookeeper/myid 
RUN cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg 
ADD start-zk.sh /opt/zookeeper/bin/start-zk.sh 
RUN chmod +x  /opt/zookeeper/bin/start-zk.sh
CMD  /opt/zookeeper/bin/start-zk.sh
