# State to install apache web server
{% from "states/apache/map.jinja" import apache with context %}

apache_install:
  pkg.installed:
    - name: {{states.apache.install}}