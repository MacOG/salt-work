include:
  - salt.minion.repo

Install Salt-Minion Service:
  pkg.installed:
    - name: salt-minion
    - version: 3006.8
    - hold: True
    - require:
      - pkgrepo: salt
