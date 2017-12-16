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
  'webapp':
    - golang
    - webapp
  'database':
    - mysql.server
    - mysql.user
    - dbschema
