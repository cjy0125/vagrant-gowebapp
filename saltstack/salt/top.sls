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

  'webapp':
    - golang
    - webapp
  'database':
    - mysql.server
    - mysql.user
    - dbschema
