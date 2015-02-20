vagrant:
  user.present:
    - fullname: Fred Jones
    - shell: /bin/bash
    - home: /home/vagrant
    - uid: 4000
    - groups:
      - sudo

/vagrant:
  file.directory:
    - user: vagrant
    - group: vagrant
    - mode: 755
    - makedirs: True
    - require:
      - user: vagrant

vagrant_git_remote:
  git:
    - latest
    - user: root
    - target: /calamari.git
    - name: https://github.com/ceph/calamari.git
