base:
  '*':
    - common
  'monitor':
    - sensu.server
  'webapp':
    - golang
    - webapp
  'database':
    - mysql.server
    - mysql.user
    - dbschema
