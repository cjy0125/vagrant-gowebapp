base:
  '*':
    - common
  'monitor':
    - rabbitmq
    - redis.server
    - sensu.server
  'webapp':
    - golang
    - webapp
  'database':
    - mysql.server
    - mysql.user
    - dbschema
