### Alpine-Mongo

alpine mongo image

#### Get Image from Docker Hub

```
$ docker pull leafney/alpine-mongo
```

#### Run default container

```
$ docker run --name mongo -d -p 27017:27017 leafney/alpine-mongo
```

#### Run a container by yourself config

```
$ docker run --name mongo --restart=always -d -p 27017:27017 -v /home/tiger/mongo:/data leafney/alpine-mongo
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

And Then, Restart the container:

```
$ docker restart mongo
```
