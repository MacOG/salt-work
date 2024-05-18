Install Salt-Minion Service:
  pkg.installed:
    - name: salt-minion
  require:
    - pkgrepo: salt
