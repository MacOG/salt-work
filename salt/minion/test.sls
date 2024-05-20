{% set p_master = salt['pillar.get']('master') %}
{% set g_master = grains['master'] %}


{% if p_master %}
  {% if g_master != p_master %}
  /tmp/test.txt:
    file.managed:
      - user: sgoetz
      - group: sgoetz
      - contents: 'minion migrated'
  {% endif %}
{% endif %}
