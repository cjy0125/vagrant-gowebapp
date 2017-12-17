{% set fqdn_split = salt['grains.get']('fqdn').split('.') + ['all'] %}
sensu:
  rabbitmq:
    host: 192.168.133.99
    user: mquser
    password: mqpass
  client:
    embedded_ruby: true
    nagios_plugins: true
    gem_source: http://gemmirror.example.com:9292
    subscriptions: {{ fqdn_split }}