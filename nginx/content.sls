Deploy Under Construction Page:
  file.managed:
    - name: /usr/share/nginx/html/index.html
    - source: salt://nginx/files/index.html
    - user: root
    - group: root
