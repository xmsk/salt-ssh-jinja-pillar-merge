file managed:
  file.managed:
    - name: /tmp/salt-managed.txt
    - source: salt://files/salt.txt.j2
    - template: jinja
    - user: root
    - group: root
    - mode: 644

file append:
  file.append:
    - name: /tmp/salt-append.txt
    - text: |
        key1: {{ pillar.get('complex', {}).get('key1') }}
        key2: {{ pillar.get('complex', {}).get('key2') }}
        top_level: {{ pillar.get('top_level') }}
