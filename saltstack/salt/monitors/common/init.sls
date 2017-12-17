monitors_common_file:
  file.managed:
    - name: /etc/sensu/conf.d/check_common_trusty.json
    - template: jinja
    - source: salt://monitors/common/check_common_trusty.json
    - user: root
    - group: root
    - mode: 644