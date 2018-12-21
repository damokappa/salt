# State to set grains on salt minions based on what packages are installed if the grains are not set already upon installation
{% from "states/mysql/map.jinja" import mysql with context %}
{% from "states/apache/map.jinja" import apache with context %}

{% if salt['pkg.version']('apache') %}    
set_grains_web:
  roles:
    grains.append:
      - value: webserver
{% endif %}

{% if salt['pkg.version']('mysql') %}
set_grains_db:
  roles:
    grains.append:
      - value: database
{% endif %}