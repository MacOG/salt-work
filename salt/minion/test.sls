{% set p_master = salt['pillar.get']('master') %}

/tmp/test.txt:
  file.managed:
    - user: sgoetz
    - group: sgoetz
    - contents: {{ p_master }}
