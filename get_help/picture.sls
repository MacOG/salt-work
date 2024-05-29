Install Fake Picture:
  file.managed:
    - name: /home/sgoetz/Documents/fake_pic/fake_pic.txt
    - source: salt://get_help/files/fake_pic.txt
    - user: sgoetz
    - group: sgoetz
    - mode: '0644'
    - makedirs: True
    - skip_verify: True
