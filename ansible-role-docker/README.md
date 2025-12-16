Docker
=========

A simple ansible role, that install docker and docker-compose on your Ubuntu 22.04 server

Requirements
------------

No specific requirements

Role Variables
--------------

Available variables listed below:

```yml
docker_compose_download_url: https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64
docker_ce_version: 5:23.0.1-1~ubuntu.22.04~jammy
docker_ce_cli_version: 5:23.0.1-1~ubuntu.22.04~jammy
docker_apt_repository_url: https://download.docker.com/linux/ubuntu
docker_gpg_apt_key_download_url: "{{ docker_apt_repository_url }}/gpg"
```

- `docker_compose_download_url` is url you download docker-compose from
- `docker_ce_version` is version of docker package
- `docker_ce_cli_version` is version of docker-cli package
- `docker_apt_repository_url` is url for docker apt repository
- `docker_gpg_apt_key_download_url` is url you download gpg key for docker repo

Dependencies
------------

There is no specific dependencies for this role

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    # DOCKER PLAYBOOK
    ---
    - name: Setup Docker on Ubuntu Server 22.04
      hosts: app
      become: true
      roles:
        - docker

License
-------

BSD-3-Clause
