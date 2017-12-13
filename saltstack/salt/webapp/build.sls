webapp_pkgs:
  pkg.installed:
    - name: git

webapp_go_path:
  file.directory:
    - names: 
        - /opt/gowebapp
        - /opt/gowebapp/config
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

webapp_go_get:
  cmd.run:
    - require:
        - pkg: webapp_pkgs
        - file: webapp_go_path
        - alternatives: golang|update-alternatives
    - env:
        - GOPATH: /opt/gowebapp
    - cwd: /opt/gowebapp
    - name: go get github.com/josephspurrier/gowebapp

webapp_go_build:
  cmd.run:
    - require:
        - cmd: webapp_go_get
    - env:
        - GOPATH: /opt/gowebapp
    - cwd: /opt/gowebapp
    - name: go build github.com/josephspurrier/gowebapp