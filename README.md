### Alpine-Mongo

alpine mongo image

#### Get Image from Docker Hub

```
$ docker pull leafney/alpine-mongo
```

#### Run default container

```
$ docker run --name mongo -d -p 27017:27017 leafney/alpine-mongo:latest
```

#### Run a container by yourself config

```
$ docker run --name mongo --restart=always -d -p 27017:27017 -v /home/tiger/mongo:/data leafney/alpine-mongo:latest
```

Get the three directory under `/data` folder in the git library sample program copy to the `/home/tiger/mongo` directory：

```
data
-- config
    -- mongod.conf
-- db
-- logs
```

You can customize the settings in the `mongod.conf` file.

eg:

default `bind_ip` is `127.0.0.1`, if you want to connect from remote server,you can add `bind_ip = 0.0.0.0` in the config file.

And Then, Restart the container:

```
$ docker restart mongo
```
