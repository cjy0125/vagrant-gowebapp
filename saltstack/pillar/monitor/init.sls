sensu:
  rabbitmq:
    host: 192.168.133.99
    user: mquser
    password: mqpass

redis:
  server:
    enabled: true
    bind:
      address: 127.0.0.1
      port: 6379
      protocol: tcp
      