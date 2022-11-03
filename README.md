# docker-service

Docker compose quick start of common services

## Commands

| Argument     | Description                              |
|:-------------|:-----------------------------------------|
| WHAT         | Specify the service name.    e.g. mysql  |
| VERSION      | Specify the service version. e.g. v1.0.0 |

| Command      | Arguments              | Description                                |
|:-------------|:-----------------------|:-------------------------------------------|
| make run     | [WHAT=]<br/>[VERSION=] | Run the specified service.                 |
| make stop    | [WHAT=]                | Stop the specified service.                |
| make upgrade | [WHAT=]<br/>[VERSION=] | Force rebuild the specified service.       |
| make remove  | [WAHT=]                | Remove the specified service.              |
| make clean   |                        | Clean up all services, networks or others. |

## Supports

- minio
- mosquitto
- mysql
- postgres
- rabbitmq
- redis
- registry
- zookeeper

More will be added in the future.