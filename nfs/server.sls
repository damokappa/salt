# State to install NFS CENTOS
nfs_install:
  pkg.installed:
    - name: nfs-utils
doc_roots:
  file.directory:
    - user: nfsnobody
    - group: nfsnobody
    - file_mode: 755
    - dir_mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode
      
nfs_config:
  service.running: 
    - name: nfs-server
    - enable: True
  service.running:
    - name: rpcbind
    - enable: True
  service.running:
    - name: nfs-lock
    - enable: True
  service.running:
    - name: nfs-idmap
    - enable: True