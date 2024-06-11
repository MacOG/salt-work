Remove Auth Certificate:
  file.absent:
    - name: /etc/salt/pki/minion/minion_master.pub

Remove Minion Key:
  event.send:
    - name: salt/minion/migrated

Restart Salt-Minion:
  cmd.run:
    - name: salt-call --local service.stop salt-minion
    - bg: True
    - onchanges:
      - file: /etc/salt/pki/minion/minion_master.pub
