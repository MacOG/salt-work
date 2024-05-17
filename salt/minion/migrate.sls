{#
Used to Migrate Virtual Machines to a new Salt-Master
Removes the old minion_master.pub key
Removes the old configuration files for T2PLVMPXE01
#}

include:
  - salt.minion.repo
  - salt.minion.package
  - salt.minion.conf

Remove /etc/salt/minion.d/autosign.conf:
  file.absent:
    - name: /etc/salt/minion.d/autosign.conf

Remove /etc/salt/minion.d/grains.conf:
  file.absent:
    - name: /etc/salt/minion.d/grains.conf

Remove /etc/salt/minion.d/leader.conf:
  file.absent:
    - name: /etc/salt/minion.d/leader.conf

Ensure /etc/salt/minion is commented out:
  file.comment:
    - name: /etc/salt/minion
    - regex: '^[^ #]'
    - char: '#'

Remove /etc/salt/pki/minion/minion_master.pub:
  file.absent:
    - name: /etc/salt/pki/minion/minion_master.pub

Restart salt-minion service:
  service.running:
    - name: salt-minion
    - enable: True
    - watch:
      - file: /etc/salt/minion.d/autosign.conf
      - file: /etc/salt/minion.d/grains.conf
      - file: /etc/salt/minion.d/leader.conf
      - file: /etc/salt/minion
      - file: /etc/salt/pki/minion/minion_master.pub
