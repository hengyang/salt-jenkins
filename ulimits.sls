{%- if grains['kernel'] == 'Linux' %}
ulimits-nofile:
  file.managed:
    - name: /etc/security/limits.d/83-nofile.conf
    - mode: 644
    - makedirs: True
    - contents: 'root - nofile 1048576'
{%- endif %}
