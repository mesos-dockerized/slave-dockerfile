# Mesos Slave docker image

[![Build Status](https://travis-ci.org/mesos-dockerized/slave-dockerfile.svg?branch=master)](https://travis-ci.org/mesos-dockerized/master-dockerfile) [![Docker Repository on Quay](https://quay.io/repository/mesosdockerized/mesos-slave/status "Docker Repository on Quay")](https://quay.io/repository/mesosdockerized/mesos-master)

## Example usage
```
docker run -d --net=host --privileged --name=mesos-slave \
 -e MESOS_MASTER=zk://{EXTERNAL_IP}:2181/mesos \
 -e MESOS_SWITCH_USER=0 \
 -e MESOS_CONTAINERIZERS=mesos,docker \
 -e MESOS_LOG_DIR=/var/log/mesos \
 -e MESOS_IP={EXTERNAL_IP} \
 -e MESOS_WORK_DIR=/var/tmp/mesos \
 -e MESOS_EXECUTOR_REGISTRATION_TIMEOUT=5mins \
 -e MESOS_DOCKER_KILL_ORPHANS=false \
 -e MESOS_SYSTEMD_ENABLE_SUPPORT=false \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v /cgroup:/cgroup \
 -v /sys:/sys \
 -v /usr/local/bin/docker:/usr/local/bin/docker \
 quay.io/mesosdockerized/mesos-slave:1.0.0
```

Check more examples in [mesos-dockerized/mesos-cluster][mesos-cluster-repo] repository.

[mesos-cluster-repo]: https://github.com/mesos-dockerized/mesos-cluster
