{% from "states/mysql/map.jinja" import mysql with context %}

include:
  - states.mysql.restart

mysql_server_config:
  file.managed:
    - name: {{ mysql.server_conf }}
    - source: {{ mysql.server_conf_source }}
    - require:
      - pkg: {{ mysql.server }}
