{% from "sensu/pillar_map.jinja" import sensu with context -%}

include:
  - sensu

/etc/sensu/conf.d/api.json:
  file.serialize:
    - formatter: json
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: sensu
    - dataset:
        api:
          host: {{ sensu.api.host }}
          port: {{ sensu.api.port }}
{%- if sensu.api.auth == True %}
          password: {{ sensu.api.password }}
          user: {{ sensu.api.user }}
{% endif %}

