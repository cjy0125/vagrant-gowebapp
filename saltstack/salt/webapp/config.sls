webapp_config_file:
  file.managed:
    - name: /opt/gowebapp/config/config.json
    - template: jinja
    - source: salt://webapp/config.json
    - user: root
    - group: root
    - mode: 644

#webapp_link_resources:
/opt/gowebapp/static:
  file.symlink:
    - target: /opt/gowebapp/src/github.com/josephspurrier/gowebapp/static
/opt/gowebapp/template:
  file.symlink:
    - target: /opt/gowebapp/src/github.com/josephspurrier/gowebapp/template
  
#webapp_init_database:
