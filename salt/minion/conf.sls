Configure Salt-Minion:
  file.managed:
    - name: /etc/salt/minion.d/gd_minion.conf
    - source: salt://salt/minion/files/gd_minion.tmpl
    - template: jinja
    - user: root
    - group: root
    - mode: '0644'
    - defaults:
        master:
        master_finger:
        saltenv:
        autosign_grain:
        autosign_grain_value:
        log_level:
    - require:
      - pkg: salt-minion
