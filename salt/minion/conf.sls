Configure Salt-Minion:
  file.managed:
    - name: /etc/salt/minion.d/gd_minion.conf
    - source: salt://salt/minion/files/gd_minion.tmpl
    - template: jinja
    - user: root
    - group: root
    - mode: '0644'
    - defaults:
        master: {{ salt['pillar.get']('master', grains['master']) }}
        master_finger: {{ salt['pillar.get']('master_finger') }}
        saltenv: {{ salt['pillar.get']('saltenv', 'prod') }}
        autosign_grain: {{ salt['pillar.get']('autosign_grain') }}
        autosign_grain_value: {{ salt['pillar.get']('autosign_grain_value') }}
        log_level: {{ salt['pillar.get']('log_level', 'critical') }}
