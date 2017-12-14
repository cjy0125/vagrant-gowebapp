{% set root_pass = salt['pillar.get']('mysql:server:root_password') %}
dbschema_script:
  file.managed:
    - name: /opt/gowebapp/mysql.sql
    - template: jinja
    - source: salt://dbschema/mysql.sql
    - user: root
    - group: root
    - mode: 644

dbschema_apply:
    cmd.run:
    - require:
        - file: dbschema_script
        - service: mysqld
    - cwd: /opt/gowebapp
    - name: mysql --user=root --password={{ root_pass }} < mysql.sql