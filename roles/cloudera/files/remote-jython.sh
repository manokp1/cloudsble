# java environment stuff
export JAVA_HOME=/usr/java/jdk1.8.0_102
export PATH=/usr/java/jdk1.8.0_102:$PATH
export CLASSPATH=$(find "/opt/cloudera/parcels/CDH/lib/hbase/" -name '*.jar' -printf '%p:' | sed 's/:$//')
export CLASSPATH=$CLASSPATH:$(find "/opt/cloudera/parcels/CDH/lib/hadoop-hdfs/" -name '*.jar' -printf '%p:' | sed 's/:$//')
export CLASSPATH=$CLASSPATH:$(find "/opt/cloudera/parcels/CDH/lib/hadoop/" -name '*.jar' -printf '%p:' | sed 's/:$//')
alias jython='/opt/jython-2.7.0/bin/jython'

# python path to the source code
export PYTHONPATH=$PYTHONPATH:/home/app/git

# add the source code dir to the pythonpath and jythonpath
export PYTHONPATH=$PYTHONPATH:/home/app/git
export JYTHONPATH=$PYTHONPATH
/opt/jython-2.7.0/bin/jython "$@"

