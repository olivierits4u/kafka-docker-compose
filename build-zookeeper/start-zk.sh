echo "" > /opt/zookeeper/conf/zoo.cfg
echo "dataDir=/opt/data/zookeeper"  >> /opt/zookeeper/conf/zoo.cfg
echo "clientPort=2181"  >> /opt/zookeeper/conf/zoo.cfg
echo "maxClientCnxns=200"  >> /opt/zookeeper/conf/zoo.cfg
echo "tickTime=2000"  >> /opt/zookeeper/conf/zoo.cfg
echo "initLimit=20"  >> /opt/zookeeper/conf/zoo.cfg
echo "syncLimit=10"  >> /opt/zookeeper/conf/zoo.cfg
echo "server.1=${SERVER_1}:2888:3888"  >> /opt/zookeeper/conf/zoo.cfg  
echo "server.2=${SERVER_2}:2888:3888"  >> /opt/zookeeper/conf/zoo.cfg 
echo "server.3=${SERVER_3}:2888:3888"  >> /opt/zookeeper/conf/zoo.cfg 
echo "${MY_ID}" > /opt/data/zookeeper/myid
echo "---------------"
env
cat /opt/data/zookeeper/myid
echo "---------------"

/opt/zookeeper/bin/zkServer.sh start-foreground
