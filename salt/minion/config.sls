Configure Salt-Minion:
  file.managed:
    - name: /etc/salt/minion.d/automated.conf
    - source: salt://salt/minion/files/automated.tmpl
    - template: jinja
    - user: root
    - group: root
    - defaults:
        saltenv: {{ salt['pillar.get']('', prod) }}
