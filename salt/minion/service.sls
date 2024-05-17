Enable and Start Salt-Minion Service:
  service.running:
    - name: salt-minion
    - enable: True
    - require:
      - pkg: salt-minion
