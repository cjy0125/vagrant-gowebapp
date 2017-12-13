webapp_config_file:
  file.managed:
    - name: /opt/gowebapp/config/config.json
    - template: jinja
    - source: salt://webapp/config.json
    - user: root
    - group: root
    - mode: 644

#webapp_link_resources:

#webapp_init_database:
