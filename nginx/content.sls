Deploy Under Construction Page:
  file.managed:
    - name: /usr/share/testpage/index.html
    - source: salt://nginx/files/index.tmpl
    - user: root
    - group: root
    - mode: '0644'
    - template: jinja
    - defaults:
        title: {{ salt['pillar.get']('nginx.title', 'ALMA') }}
        body: {{ salt['pillar.get']('nginx.body', 'ALMA') }}
        body_enc: {{ salt['pillar.get']('nginx.body_enc', 'ALMA') }}
