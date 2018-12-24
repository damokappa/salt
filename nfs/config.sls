nfs_client_config:
  file.managed:
    - name: /etc/exports
    - source: salt://states/nfs/files/exports
    - require:
      - nfs-server