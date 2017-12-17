{% set node_name = 'webapp' %}
monitors_{{ node_name }}_file:
  file.managed:
    - name: /etc/sensu/conf.d/check_{{ node_name }}.json
    - template: jinja
    - source: salt://monitors/{{ node_name }}/check_{{ node_name }}.json
    - user: root
    - group: root
    - mode: 644