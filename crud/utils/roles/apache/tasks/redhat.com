- name: install Apache2
  yum: name=httpd update_cache=yes state=latest

- name: enabled mod_rewrite
  apache2_module: name=rewrite state=present
  notify:
    - restart httpd
