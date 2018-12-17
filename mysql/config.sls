mysql_server_config:
  file.managed:
    - name: /etc/my.cnf.d/server.cnf
    - source: salt://states/mysql/files/server.cnf
