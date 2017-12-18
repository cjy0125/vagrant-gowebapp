base:
  '*':
    - common
    - sensu.client
  'monitor':
    - rabbitmq
    - redis.server
    - sensu.server
    - sensu.api
    - sensu.uchiwa
    - monitors.common
    - monitors.webapp
    - monitors.monitor
    - monitors.database

  'webapp':
    - golang
    - webapp
  'database':
    - mysql.server
    - mysql.user
    - dbschema
