sensu:
  rabbitmq:
    host: 192.168.133.99
    user: mquser
    password: mqpass
  uchiwa:
        users:
            - username: monitor
              password: foo
              role: { readonly: False }

redis:
  server:
    enabled: true
    bind:
      address: 127.0.0.1
      port: 6379
      protocol: tcp

rabbitmq:
  enabled: True
  running: True
  vhost:
    vh_name: '/sensu'
  user:
    mquser:
      - password: mqpass
      - force: True
      - tags: monitoring, user
      - perms:
        - '/sensu':
          - '.*'
          - '.*'
          - '.*'