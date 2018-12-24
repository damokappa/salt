{% from "states/mysql/map.jinja" import mysql with context %}

mysql_service_enable:
  service.running:
    - name: {{ mysql.service }}
    - enable: True
