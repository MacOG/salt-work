{% set p_master = salt['pillar.get']('master') %}
{% set g_master = grains['master'] %}
/tmp/test.txt:
  file.managed:
    - user: sgoetz
    - group: sgoetz
    - contents: |
        {{ p_master }}
        {{ g_master }}
