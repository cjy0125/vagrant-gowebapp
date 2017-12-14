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
  
webapp_upstart_conf:
  file.managed:
    - name: /etc/init/gowebapp.conf
    - template: jinja
    - source: salt://webapp/gowebapp.conf
    - user: root
    - group: root
    - mode: 644

webapp_upstart_srv:
  service.running:
    - name: gowebapp
    - enable: true
    - require:
      - file: webapp_upstart_conf
      - file: /opt/gowebapp/static
      - file: /opt/gowebapp/template
      - cmd: webapp_go_build
