Deploy Under Construction Page:
  file.managed:
    - name: /usr/share/nginx/html/index.html
    - source: salt://nginx/files/index.tmpl
    - user: root
    - group: root
    - template: jinja
