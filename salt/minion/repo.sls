Configure Salt Repo:
  pkgrepo.managed:
    - name: salt
    - enabled: True
    - humanname: 'SaltStack 3006 Release Channel for RHEL/CentOS $releasever'
    - priority: 10
    - baseurl: https://repo.saltproject.io/salt/py3/redhat/$releasever/$basearch/3006
    - skip_if_unavailable: True
    - gpgcheck: 1
    - gpgkey: https://repo.saltproject.io/salt/py3/redhat/$releasever/$basearch/3006/SALT-PROJECT-GPG-PUBKEY-2023.pub
    - enable_metadata: 1
