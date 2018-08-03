# Broken molecule example

### How to reproduce

Works as expected:
```
molecule test
```

Fails
```
docker run --rm -it \
    -v $PWD:/tmp/$(basename "${PWD}"):ro \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -w /tmp/$(basename "${PWD}") \
    retr0h/molecule:latest \
    sudo molecule --debug test
```

Error message:
```
vagrant@carverlinux:~/jamespoc$ docker run --rm -it \
>     -v $PWD:/tmp/$(basename "${PWD}"):ro \
>     -v /var/run/docker.sock:/var/run/docker.sock \
>     -w /tmp/$(basename "${PWD}") \
>     retr0h/molecule:latest \
>     sudo molecule --debug test

--> Validating schema /tmp/jamespoc/molecule/default/molecule.yml.
Validation completed successfully.
--> Test matrix

└── default
    ├── lint
    ├── destroy
    ├── dependency
    ├── syntax
    ├── create
    ├── prepare
    ├── converge
    ├── idempotence
    ├── side_effect
    ├── verify
    └── destroy

--> Scenario: 'default'
--> Action: 'lint'
--> Executing Yamllint on files found in /tmp/jamespoc/...
DEBUG: ANSIBLE ENVIRONMENT
--- {}

DEBUG: MOLECULE ENVIRONMENT
---
MOLECULE_DEBUG: 'True'
MOLECULE_DEPENDENCY_NAME: galaxy
MOLECULE_DRIVER_NAME: docker
MOLECULE_EPHEMERAL_DIRECTORY: /tmp/molecule/jamespoc/default
MOLECULE_FILE: /tmp/jamespoc/molecule/default/molecule.yml
MOLECULE_INSTANCE_CONFIG: /tmp/molecule/jamespoc/default/instance_config.yml
MOLECULE_INVENTORY_FILE: /tmp/molecule/jamespoc/default/ansible_inventory.yml
MOLECULE_LINT_NAME: yamllint
MOLECULE_PROVISIONER_LINT_NAME: ansible-lint
MOLECULE_PROVISIONER_NAME: ansible
MOLECULE_SCENARIO_DIRECTORY: /tmp/jamespoc/molecule/default
MOLECULE_SCENARIO_NAME: default
MOLECULE_VERIFIER_LINT_NAME: flake8
MOLECULE_VERIFIER_NAME: testinfra
MOLECULE_VERIFIER_TEST_DIRECTORY: /tmp/jamespoc/molecule/default/tests

DEBUG: SHELL REPLAY
MOLECULE_DEBUG=True MOLECULE_DEPENDENCY_NAME=galaxy MOLECULE_DRIVER_NAME=docker MOLECULE_EPHEMERAL_DIRECTORY=/tmp/molecule/jamespoc/default MOLECULE_FILE=/tmp/jamespoc/molecule/default/molecule.yml MOLECULE_INSTANCE_CONFIG=/tmp/molecule/jamespoc/default/instance_config.yml MOLECULE_INVENTORY_FILE=/tmp/molecule/jamespoc/default/ansible_inventory.yml MOLECULE_LINT_NAME=yamllint MOLECULE_PROVISIONER_LINT_NAME=ansible-lint MOLECULE_PROVISIONER_NAME=ansible MOLECULE_SCENARIO_DIRECTORY=/tmp/jamespoc/molecule/default MOLECULE_SCENARIO_NAME=default MOLECULE_VERIFIER_LINT_NAME=flake8 MOLECULE_VERIFIER_NAME=testinfra MOLECULE_VERIFIER_TEST_DIRECTORY=/tmp/jamespoc/molecule/default/tests

DEBUG: COMMAND
/usr/bin/yamllint -s /tmp/jamespoc/requirements.yml /tmp/jamespoc/playbook.yml /tmp/jamespoc/molecule/default/molecule.yml

Lint completed successfully.
Skipping, no tests found.
--> Executing Ansible Lint on /tmp/jamespoc/playbook.yml...
DEBUG: ANSIBLE ENVIRONMENT
---
ANSIBLE_CONFIG: /tmp/molecule/jamespoc/default/ansible.cfg
ANSIBLE_FILTER_PLUGINS: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/filters:/tmp/molecule/jamespoc/default/plugins/filters:/tmp/jamespoc/plugins/filters
ANSIBLE_LIBRARY: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/libraries:/tmp/molecule/jamespoc/default/library:/tmp/jamespoc/library
ANSIBLE_ROLES_PATH: /tmp/molecule/jamespoc/default/roles:/tmp:/tmp/molecule/ansible/default:/tmp/jamespoc/molecule/roles

DEBUG: MOLECULE ENVIRONMENT
---
MOLECULE_DEBUG: 'True'
MOLECULE_DEPENDENCY_NAME: galaxy
MOLECULE_DRIVER_NAME: docker
MOLECULE_EPHEMERAL_DIRECTORY: /tmp/molecule/jamespoc/default
MOLECULE_FILE: /tmp/jamespoc/molecule/default/molecule.yml
MOLECULE_INSTANCE_CONFIG: /tmp/molecule/jamespoc/default/instance_config.yml
MOLECULE_INVENTORY_FILE: /tmp/molecule/jamespoc/default/ansible_inventory.yml
MOLECULE_LINT_NAME: yamllint
MOLECULE_PROVISIONER_LINT_NAME: ansible-lint
MOLECULE_PROVISIONER_NAME: ansible
MOLECULE_SCENARIO_DIRECTORY: /tmp/jamespoc/molecule/default
MOLECULE_SCENARIO_NAME: default
MOLECULE_VERIFIER_LINT_NAME: flake8
MOLECULE_VERIFIER_NAME: testinfra
MOLECULE_VERIFIER_TEST_DIRECTORY: /tmp/jamespoc/molecule/default/tests

DEBUG: SHELL REPLAY
ANSIBLE_CONFIG=/tmp/molecule/jamespoc/default/ansible.cfg ANSIBLE_FILTER_PLUGINS=/usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/filters:/tmp/molecule/jamespoc/default/plugins/filters:/tmp/jamespoc/plugins/filters ANSIBLE_LIBRARY=/usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/libraries:/tmp/molecule/jamespoc/default/library:/tmp/jamespoc/library ANSIBLE_ROLES_PATH=/tmp/molecule/jamespoc/default/roles:/tmp:/tmp/molecule/ansible/default:/tmp/jamespoc/molecule/roles MOLECULE_DEBUG=True MOLECULE_DEPENDENCY_NAME=galaxy MOLECULE_DRIVER_NAME=docker MOLECULE_EPHEMERAL_DIRECTORY=/tmp/molecule/jamespoc/default MOLECULE_FILE=/tmp/jamespoc/molecule/default/molecule.yml MOLECULE_INSTANCE_CONFIG=/tmp/molecule/jamespoc/default/instance_config.yml MOLECULE_INVENTORY_FILE=/tmp/molecule/jamespoc/default/ansible_inventory.yml MOLECULE_LINT_NAME=yamllint MOLECULE_PROVISIONER_LINT_NAME=ansible-lint MOLECULE_PROVISIONER_NAME=ansible MOLECULE_SCENARIO_DIRECTORY=/tmp/jamespoc/molecule/default MOLECULE_SCENARIO_NAME=default MOLECULE_VERIFIER_LINT_NAME=flake8 MOLECULE_VERIFIER_NAME=testinfra MOLECULE_VERIFIER_TEST_DIRECTORY=/tmp/jamespoc/molecule/default/tests

DEBUG: COMMAND
/usr/bin/ansible-lint -v --exclude=/tmp/molecule/jamespoc/default /tmp/jamespoc/playbook.yml

    Examining /tmp/jamespoc/playbook.yml of type playbook
Lint completed successfully.
--> Scenario: 'default'
--> Action: 'destroy'
DEBUG: ANSIBLE ENVIRONMENT
---
ANSIBLE_CONFIG: /tmp/molecule/jamespoc/default/ansible.cfg
ANSIBLE_FILTER_PLUGINS: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/filters:/tmp/molecule/jamespoc/default/plugins/filters:/tmp/jamespoc/plugins/filters
ANSIBLE_LIBRARY: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/libraries:/tmp/molecule/jamespoc/default/library:/tmp/jamespoc/library
ANSIBLE_ROLES_PATH: /tmp/molecule/jamespoc/default/roles:/tmp:/tmp/molecule/ansible/default:/tmp/jamespoc/molecule/roles

DEBUG: MOLECULE ENVIRONMENT
---
MOLECULE_DEBUG: 'True'
MOLECULE_DEPENDENCY_NAME: galaxy
MOLECULE_DRIVER_NAME: docker
MOLECULE_EPHEMERAL_DIRECTORY: /tmp/molecule/jamespoc/default
MOLECULE_FILE: /tmp/jamespoc/molecule/default/molecule.yml
MOLECULE_INSTANCE_CONFIG: /tmp/molecule/jamespoc/default/instance_config.yml
MOLECULE_INVENTORY_FILE: /tmp/molecule/jamespoc/default/ansible_inventory.yml
MOLECULE_LINT_NAME: yamllint
MOLECULE_PROVISIONER_LINT_NAME: ansible-lint
MOLECULE_PROVISIONER_NAME: ansible
MOLECULE_SCENARIO_DIRECTORY: /tmp/jamespoc/molecule/default
MOLECULE_SCENARIO_NAME: default
MOLECULE_VERIFIER_LINT_NAME: flake8
MOLECULE_VERIFIER_NAME: testinfra
MOLECULE_VERIFIER_TEST_DIRECTORY: /tmp/jamespoc/molecule/default/tests

DEBUG: SHELL REPLAY
ANSIBLE_CONFIG=/tmp/molecule/jamespoc/default/ansible.cfg ANSIBLE_FILTER_PLUGINS=/usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/filters:/tmp/molecule/jamespoc/default/plugins/filters:/tmp/jamespoc/plugins/filters ANSIBLE_LIBRARY=/usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/libraries:/tmp/molecule/jamespoc/default/library:/tmp/jamespoc/library ANSIBLE_ROLES_PATH=/tmp/molecule/jamespoc/default/roles:/tmp:/tmp/molecule/ansible/default:/tmp/jamespoc/molecule/roles MOLECULE_DEBUG=True MOLECULE_DEPENDENCY_NAME=galaxy MOLECULE_DRIVER_NAME=docker MOLECULE_EPHEMERAL_DIRECTORY=/tmp/molecule/jamespoc/default MOLECULE_FILE=/tmp/jamespoc/molecule/default/molecule.yml MOLECULE_INSTANCE_CONFIG=/tmp/molecule/jamespoc/default/instance_config.yml MOLECULE_INVENTORY_FILE=/tmp/molecule/jamespoc/default/ansible_inventory.yml MOLECULE_LINT_NAME=yamllint MOLECULE_PROVISIONER_LINT_NAME=ansible-lint MOLECULE_PROVISIONER_NAME=ansible MOLECULE_SCENARIO_DIRECTORY=/tmp/jamespoc/molecule/default MOLECULE_SCENARIO_NAME=default MOLECULE_VERIFIER_LINT_NAME=flake8 MOLECULE_VERIFIER_NAME=testinfra MOLECULE_VERIFIER_TEST_DIRECTORY=/tmp/jamespoc/molecule/default/tests

DEBUG: COMMAND
/usr/bin/ansible-playbook --skip-tags=molecule-notest,notest --inventory=/tmp/molecule/jamespoc/default/ansible_inventory.yml --diff /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/playbooks/docker/destroy.yml -vvv

    ansible-playbook 2.6.1
      config file = /tmp/molecule/jamespoc/default/ansible.cfg
      configured module search path = [u'/usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/libraries', u'/tmp/molecule/jamespoc/default/library', u'/tmp/jamespoc/library']
      ansible python module location = /usr/lib/python2.7/site-packages/ansible
      executable location = /usr/bin/ansible-playbook
      python version = 2.7.14 (default, Dec 14 2017, 15:51:29) [GCC 6.4.0]
    Using /tmp/molecule/jamespoc/default/ansible.cfg as config file
    Parsed /tmp/molecule/jamespoc/default/ansible_inventory.yml inventory source with yaml plugin

    PLAYBOOK: destroy.yml **********************************************************
    1 plays in /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/playbooks/docker/destroy.yml

    PLAY [Destroy] *****************************************************************
    META: ran handlers

    TASK [Destroy molecule instance(s)] ********************************************
    task path: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/playbooks/docker/destroy.yml:8
    <127.0.0.1> ESTABLISH LOCAL CONNECTION FOR USER: root
    <127.0.0.1> EXEC /bin/sh -c 'echo ~root && sleep 0'
    <127.0.0.1> EXEC /bin/sh -c '( umask 77 && mkdir -p "` echo /root/.ansible/tmp/ansible-tmp-1533278806.77-253089152204316 `" && echo ansible-tmp-1533278806.77-253089152204316="` echo /root/.ansible/tmp/ansible-tmp-1533278806.77-253089152204316 `" ) && sleep 0'
    Using module file /usr/lib/python2.7/site-packages/ansible/modules/cloud/docker/docker_container.py
    <127.0.0.1> PUT /root/.ansible/tmp/ansible-local-229cQCw5/tmpgISt65 TO /root/.ansible/tmp/ansible-tmp-1533278806.77-253089152204316/docker_container.py
    <127.0.0.1> PUT /root/.ansible/tmp/ansible-local-229cQCw5/tmpKTa6Aj TO /root/.ansible/tmp/ansible-tmp-1533278806.77-253089152204316/async_wrapper.py
    <127.0.0.1> EXEC /bin/sh -c 'chmod u+x /root/.ansible/tmp/ansible-tmp-1533278806.77-253089152204316/ /root/.ansible/tmp/ansible-tmp-1533278806.77-253089152204316/docker_container.py /root/.ansible/tmp/ansible-tmp-1533278806.77-253089152204316/async_wrapper.py && sleep 0'
    <127.0.0.1> EXEC /bin/sh -c '/usr/bin/python2 /root/.ansible/tmp/ansible-tmp-1533278806.77-253089152204316/async_wrapper.py 737347843870 7200 /root/.ansible/tmp/ansible-tmp-1533278806.77-253089152204316/docker_container.py _ && sleep 0'
    changed: [localhost] => (item={'image': u'centos/systemd', 'capabilities': [u'SYS_ADMIN'], 'command': u'/sbin/init', 'name': u'centos', 'volumes': [u'/sys/fs/cgroup:/sys/fs/cgroup:ro', u'/tmp:/run']}) => {
        "ansible_job_id": "737347843870.47",
        "changed": true,
        "finished": 0,
        "item": {
            "capabilities": [
                "SYS_ADMIN"
            ],
            "command": "/sbin/init",
            "image": "centos/systemd",
            "name": "centos",
            "volumes": [
                "/sys/fs/cgroup:/sys/fs/cgroup:ro",
                "/tmp:/run"
            ]
        },
        "results_file": "/root/.ansible_async/737347843870.47",
        "started": 1
    }
    changed: [localhost] => {
        "censored": "the output has been hidden due to the fact that 'no_log: true' was specified for this result",
        "changed": true
    }

    TASK [Wait for instance(s) deletion to complete] *******************************
    task path: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/playbooks/docker/destroy.yml:19
    <127.0.0.1> ESTABLISH LOCAL CONNECTION FOR USER: root
    <127.0.0.1> EXEC /bin/sh -c 'echo ~root && sleep 0'
    <127.0.0.1> EXEC /bin/sh -c '( umask 77 && mkdir -p "` echo /root/.ansible/tmp/ansible-tmp-1533278808.1-267723763506734 `" && echo ansible-tmp-1533278808.1-267723763506734="` echo /root/.ansible/tmp/ansible-tmp-1533278808.1-267723763506734 `" ) && sleep 0'
    Using module file /usr/lib/python2.7/site-packages/ansible/modules/utilities/logic/async_status.py
    <127.0.0.1> PUT /root/.ansible/tmp/ansible-local-229cQCw5/tmp6AZ_7F TO /root/.ansible/tmp/ansible-tmp-1533278808.1-267723763506734/async_status.py
    <127.0.0.1> EXEC /bin/sh -c 'chmod u+x /root/.ansible/tmp/ansible-tmp-1533278808.1-267723763506734/ /root/.ansible/tmp/ansible-tmp-1533278808.1-267723763506734/async_status.py && sleep 0'
    <127.0.0.1> EXEC /bin/sh -c '/usr/bin/python2 /root/.ansible/tmp/ansible-tmp-1533278808.1-267723763506734/async_status.py && sleep 0'
    <127.0.0.1> EXEC /bin/sh -c 'rm -f -r /root/.ansible/tmp/ansible-tmp-1533278808.1-267723763506734/ > /dev/null 2>&1 && sleep 0'
    ok: [localhost] => (item={'_ansible_parsed': True, '_ansible_item_result': True, '_ansible_item_label': {'volumes': [u'/sys/fs/cgroup:/sys/fs/cgroup:ro', u'/tmp:/run'], 'image': u'centos/systemd', 'command': u'/sbin/init', 'name': u'centos', 'capabilities': [u'SYS_ADMIN']}, u'ansible_job_id': u'737347843870.47', 'failed': False, u'started': 1, 'changed': True, 'item': {'volumes': [u'/sys/fs/cgroup:/sys/fs/cgroup:ro', u'/tmp:/run'], 'image': u'centos/systemd', 'command': u'/sbin/init', 'name': u'centos', 'capabilities': [u'SYS_ADMIN']}, u'finished': 0, u'results_file': u'/root/.ansible_async/737347843870.47', '_ansible_ignore_errors': None, '_ansible_no_log': False}) => {
        "ansible_job_id": "737347843870.47",
        "attempts": 1,
        "changed": false,
        "diff": {},
        "finished": 1,
        "invocation": {
            "module_args": {
                "api_version": "auto",
                "auto_remove": false,
                "blkio_weight": null,
                "cacert_path": null,
                "capabilities": null,
                "cert_path": null,
                "cleanup": false,
                "command": null,
                "cpu_period": null,
                "cpu_quota": null,
                "cpu_shares": null,
                "cpuset_cpus": null,
                "cpuset_mems": null,
                "debug": false,
                "detach": true,
                "devices": null,
                "dns_opts": null,
                "dns_search_domains": null,
                "dns_servers": null,
                "docker_host": "unix://var/run/docker.sock",
                "domainname": null,
                "entrypoint": null,
                "env": null,
                "env_file": null,
                "etc_hosts": null,
                "exposed_ports": null,
                "force_kill": true,
                "groups": null,
                "hostname": null,
                "ignore_image": false,
                "image": null,
                "init": false,
                "interactive": false,
                "ipc_mode": null,
                "keep_volumes": true,
                "kernel_memory": null,
                "key_path": null,
                "kill_signal": null,
                "labels": null,
                "links": null,
                "log_driver": null,
                "log_options": null,
                "mac_address": null,
                "memory": "0",
                "memory_reservation": null,
                "memory_swap": null,
                "memory_swappiness": null,
                "name": "centos",
                "network_mode": null,
                "networks": null,
                "oom_killer": null,
                "oom_score_adj": null,
                "paused": false,
                "pid_mode": null,
                "privileged": false,
                "published_ports": null,
                "pull": false,
                "purge_networks": false,
                "read_only": false,
                "recreate": false,
                "restart": false,
                "restart_policy": null,
                "restart_retries": null,
                "security_opts": null,
                "shm_size": null,
                "ssl_version": "1.0",
                "state": "absent",
                "stop_signal": null,
                "stop_timeout": null,
                "sysctls": null,
                "timeout": 60,
                "tls": false,
                "tls_hostname": "localhost",
                "tls_verify": false,
                "tmpfs": null,
                "trust_image_content": false,
                "tty": false,
                "ulimits": null,
                "user": null,
                "userns_mode": null,
                "uts": null,
                "volume_driver": null,
                "volumes": null,
                "volumes_from": null,
                "working_dir": null
            }
        },
        "item": {
            "ansible_job_id": "737347843870.47",
            "changed": true,
            "failed": false,
            "finished": 0,
            "item": {
                "capabilities": [
                    "SYS_ADMIN"
                ],
                "command": "/sbin/init",
                "image": "centos/systemd",
                "name": "centos",
                "volumes": [
                    "/sys/fs/cgroup:/sys/fs/cgroup:ro",
                    "/tmp:/run"
                ]
            },
            "results_file": "/root/.ansible_async/737347843870.47",
            "started": 1
        }
    }
    ok: [localhost] => {
        "censored": "the output has been hidden due to the fact that 'no_log: true' was specified for this result",
        "changed": false
    }

    TASK [Delete docker network(s)] ************************************************
    task path: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/playbooks/docker/destroy.yml:27
    skipping: [localhost] => {
        "censored": "the output has been hidden due to the fact that 'no_log: true' was specified for this result",
        "changed": false
    }
    META: ran handlers
    META: ran handlers

    PLAY RECAP *********************************************************************
    localhost                  : ok=2    changed=1    unreachable=0    failed=0


--> Scenario: 'default'
--> Action: 'dependency'
DEBUG: ANSIBLE ENVIRONMENT
--- {}

DEBUG: MOLECULE ENVIRONMENT
---
MOLECULE_DEBUG: 'True'
MOLECULE_DEPENDENCY_NAME: galaxy
MOLECULE_DRIVER_NAME: docker
MOLECULE_EPHEMERAL_DIRECTORY: /tmp/molecule/jamespoc/default
MOLECULE_FILE: /tmp/jamespoc/molecule/default/molecule.yml
MOLECULE_INSTANCE_CONFIG: /tmp/molecule/jamespoc/default/instance_config.yml
MOLECULE_INVENTORY_FILE: /tmp/molecule/jamespoc/default/ansible_inventory.yml
MOLECULE_LINT_NAME: yamllint
MOLECULE_PROVISIONER_LINT_NAME: ansible-lint
MOLECULE_PROVISIONER_NAME: ansible
MOLECULE_SCENARIO_DIRECTORY: /tmp/jamespoc/molecule/default
MOLECULE_SCENARIO_NAME: default
MOLECULE_VERIFIER_LINT_NAME: flake8
MOLECULE_VERIFIER_NAME: testinfra
MOLECULE_VERIFIER_TEST_DIRECTORY: /tmp/jamespoc/molecule/default/tests

DEBUG: SHELL REPLAY
MOLECULE_DEBUG=True MOLECULE_DEPENDENCY_NAME=galaxy MOLECULE_DRIVER_NAME=docker MOLECULE_EPHEMERAL_DIRECTORY=/tmp/molecule/jamespoc/default MOLECULE_FILE=/tmp/jamespoc/molecule/default/molecule.yml MOLECULE_INSTANCE_CONFIG=/tmp/molecule/jamespoc/default/instance_config.yml MOLECULE_INVENTORY_FILE=/tmp/molecule/jamespoc/default/ansible_inventory.yml MOLECULE_LINT_NAME=yamllint MOLECULE_PROVISIONER_LINT_NAME=ansible-lint MOLECULE_PROVISIONER_NAME=ansible MOLECULE_SCENARIO_DIRECTORY=/tmp/jamespoc/molecule/default MOLECULE_SCENARIO_NAME=default MOLECULE_VERIFIER_LINT_NAME=flake8 MOLECULE_VERIFIER_NAME=testinfra MOLECULE_VERIFIER_TEST_DIRECTORY=/tmp/jamespoc/molecule/default/tests

DEBUG: COMMAND
/usr/bin/ansible-galaxy install --role-file=requirements.yml --roles-path=/tmp/molecule/jamespoc/default/roles --force -vvv

    ansible-galaxy 2.6.1
      config file = None
      configured module search path = [u'/root/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
      ansible python module location = /usr/lib/python2.7/site-packages/ansible
      executable location = /usr/bin/ansible-galaxy
      python version = 2.7.14 (default, Dec 14 2017, 15:51:29) [GCC 6.4.0]
    No config file found; using defaults
    Created /root/.ansible_galaxy
    found role {'scm': 'git', 'src': 'https://github.com/geerlingguy/ansible-role-docker.git', 'version': 'master', 'name': 'ansible-role-greenbook'} in yaml file
    Processing role ansible-role-greenbook
ERROR! Unexpected Exception, this is probably a bug: local variable 'stdout' referenced before assignment
    the full traceback was:

    Traceback (most recent call last):
      File "/usr/bin/ansible-galaxy", line 118, in <module>
        exit_code = cli.run()
      File "/usr/lib/python2.7/site-packages/ansible/cli/galaxy.py", line 152, in run
        self.execute()
      File "/usr/lib/python2.7/site-packages/ansible/cli/__init__.py", line 155, in execute
        fn()
      File "/usr/lib/python2.7/site-packages/ansible/cli/galaxy.py", line 395, in execute_install
        installed = role.install()
      File "/usr/lib/python2.7/site-packages/ansible/galaxy/role.py", line 200, in install
        tmp_file = RoleRequirement.scm_archive_role(keep_scm_meta=self.options.keep_scm_meta, **self.spec)
      File "/usr/lib/python2.7/site-packages/ansible/playbook/role/requirement.py", line 208, in scm_archive_role
        run_scm_cmd(clone_cmd, tempdir)
      File "/usr/lib/python2.7/site-packages/ansible/playbook/role/requirement.py", line 197, in run_scm_cmd
        display.debug("\tstdout: " + stdout)
    UnboundLocalError: local variable 'stdout' referenced before assignment
An error occurred during the test sequence action: 'dependency'. Cleaning up.
--> Scenario: 'default'
--> Action: 'destroy'
DEBUG: ANSIBLE ENVIRONMENT
---
ANSIBLE_CONFIG: /tmp/molecule/jamespoc/default/ansible.cfg
ANSIBLE_FILTER_PLUGINS: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/filters:/tmp/molecule/jamespoc/default/plugins/filters:/tmp/jamespoc/plugins/filters
ANSIBLE_LIBRARY: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/libraries:/tmp/molecule/jamespoc/default/library:/tmp/jamespoc/library
ANSIBLE_ROLES_PATH: /tmp/molecule/jamespoc/default/roles:/tmp:/tmp/molecule/ansible/default:/tmp/jamespoc/molecule/roles

DEBUG: MOLECULE ENVIRONMENT
---
MOLECULE_DEBUG: 'True'
MOLECULE_DEPENDENCY_NAME: galaxy
MOLECULE_DRIVER_NAME: docker
MOLECULE_EPHEMERAL_DIRECTORY: /tmp/molecule/jamespoc/default
MOLECULE_FILE: /tmp/jamespoc/molecule/default/molecule.yml
MOLECULE_INSTANCE_CONFIG: /tmp/molecule/jamespoc/default/instance_config.yml
MOLECULE_INVENTORY_FILE: /tmp/molecule/jamespoc/default/ansible_inventory.yml
MOLECULE_LINT_NAME: yamllint
MOLECULE_PROVISIONER_LINT_NAME: ansible-lint
MOLECULE_PROVISIONER_NAME: ansible
MOLECULE_SCENARIO_DIRECTORY: /tmp/jamespoc/molecule/default
MOLECULE_SCENARIO_NAME: default
MOLECULE_VERIFIER_LINT_NAME: flake8
MOLECULE_VERIFIER_NAME: testinfra
MOLECULE_VERIFIER_TEST_DIRECTORY: /tmp/jamespoc/molecule/default/tests

DEBUG: SHELL REPLAY
ANSIBLE_CONFIG=/tmp/molecule/jamespoc/default/ansible.cfg ANSIBLE_FILTER_PLUGINS=/usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/filters:/tmp/molecule/jamespoc/default/plugins/filters:/tmp/jamespoc/plugins/filters ANSIBLE_LIBRARY=/usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/libraries:/tmp/molecule/jamespoc/default/library:/tmp/jamespoc/library ANSIBLE_ROLES_PATH=/tmp/molecule/jamespoc/default/roles:/tmp:/tmp/molecule/ansible/default:/tmp/jamespoc/molecule/roles MOLECULE_DEBUG=True MOLECULE_DEPENDENCY_NAME=galaxy MOLECULE_DRIVER_NAME=docker MOLECULE_EPHEMERAL_DIRECTORY=/tmp/molecule/jamespoc/default MOLECULE_FILE=/tmp/jamespoc/molecule/default/molecule.yml MOLECULE_INSTANCE_CONFIG=/tmp/molecule/jamespoc/default/instance_config.yml MOLECULE_INVENTORY_FILE=/tmp/molecule/jamespoc/default/ansible_inventory.yml MOLECULE_LINT_NAME=yamllint MOLECULE_PROVISIONER_LINT_NAME=ansible-lint MOLECULE_PROVISIONER_NAME=ansible MOLECULE_SCENARIO_DIRECTORY=/tmp/jamespoc/molecule/default MOLECULE_SCENARIO_NAME=default MOLECULE_VERIFIER_LINT_NAME=flake8 MOLECULE_VERIFIER_NAME=testinfra MOLECULE_VERIFIER_TEST_DIRECTORY=/tmp/jamespoc/molecule/default/tests

DEBUG: COMMAND
/usr/bin/ansible-playbook --skip-tags=molecule-notest,notest --inventory=/tmp/molecule/jamespoc/default/ansible_inventory.yml --diff /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/playbooks/docker/destroy.yml -vvv

    ansible-playbook 2.6.1
      config file = /tmp/molecule/jamespoc/default/ansible.cfg
      configured module search path = [u'/usr/lib/python2.7/site-packages/molecule/provisioner/ansible/plugins/libraries', u'/tmp/molecule/jamespoc/default/library', u'/tmp/jamespoc/library']
      ansible python module location = /usr/lib/python2.7/site-packages/ansible
      executable location = /usr/bin/ansible-playbook
      python version = 2.7.14 (default, Dec 14 2017, 15:51:29) [GCC 6.4.0]
    Using /tmp/molecule/jamespoc/default/ansible.cfg as config file
    Parsed /tmp/molecule/jamespoc/default/ansible_inventory.yml inventory source with yaml plugin

    PLAYBOOK: destroy.yml **********************************************************
    1 plays in /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/playbooks/docker/destroy.yml

    PLAY [Destroy] *****************************************************************
    META: ran handlers

    TASK [Destroy molecule instance(s)] ********************************************
    task path: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/playbooks/docker/destroy.yml:8
    <127.0.0.1> ESTABLISH LOCAL CONNECTION FOR USER: root
    <127.0.0.1> EXEC /bin/sh -c 'echo ~root && sleep 0'
    <127.0.0.1> EXEC /bin/sh -c '( umask 77 && mkdir -p "` echo /root/.ansible/tmp/ansible-tmp-1533278811.99-125348120082041 `" && echo ansible-tmp-1533278811.99-125348120082041="` echo /root/.ansible/tmp/ansible-tmp-1533278811.99-125348120082041 `" ) && sleep 0'
    Using module file /usr/lib/python2.7/site-packages/ansible/modules/cloud/docker/docker_container.py
    <127.0.0.1> PUT /root/.ansible/tmp/ansible-local-93pjZ45t/tmp_vOxF8 TO /root/.ansible/tmp/ansible-tmp-1533278811.99-125348120082041/docker_container.py
    <127.0.0.1> PUT /root/.ansible/tmp/ansible-local-93pjZ45t/tmpLABxEJ TO /root/.ansible/tmp/ansible-tmp-1533278811.99-125348120082041/async_wrapper.py
    <127.0.0.1> EXEC /bin/sh -c 'chmod u+x /root/.ansible/tmp/ansible-tmp-1533278811.99-125348120082041/ /root/.ansible/tmp/ansible-tmp-1533278811.99-125348120082041/docker_container.py /root/.ansible/tmp/ansible-tmp-1533278811.99-125348120082041/async_wrapper.py && sleep 0'
    <127.0.0.1> EXEC /bin/sh -c '/usr/bin/python2 /root/.ansible/tmp/ansible-tmp-1533278811.99-125348120082041/async_wrapper.py 847371111558 7200 /root/.ansible/tmp/ansible-tmp-1533278811.99-125348120082041/docker_container.py _ && sleep 0'
    changed: [localhost] => (item={'image': u'centos/systemd', 'capabilities': [u'SYS_ADMIN'], 'command': u'/sbin/init', 'name': u'centos', 'volumes': [u'/sys/fs/cgroup:/sys/fs/cgroup:ro', u'/tmp:/run']}) => {
        "ansible_job_id": "847371111558.118",
        "changed": true,
        "finished": 0,
        "item": {
            "capabilities": [
                "SYS_ADMIN"
            ],
            "command": "/sbin/init",
            "image": "centos/systemd",
            "name": "centos",
            "volumes": [
                "/sys/fs/cgroup:/sys/fs/cgroup:ro",
                "/tmp:/run"
            ]
        },
        "results_file": "/root/.ansible_async/847371111558.118",
        "started": 1
    }
    changed: [localhost] => {
        "censored": "the output has been hidden due to the fact that 'no_log: true' was specified for this result",
        "changed": true
    }

    TASK [Wait for instance(s) deletion to complete] *******************************
    task path: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/playbooks/docker/destroy.yml:19
    <127.0.0.1> ESTABLISH LOCAL CONNECTION FOR USER: root
    <127.0.0.1> EXEC /bin/sh -c 'echo ~root && sleep 0'
    <127.0.0.1> EXEC /bin/sh -c '( umask 77 && mkdir -p "` echo /root/.ansible/tmp/ansible-tmp-1533278813.32-240271484502410 `" && echo ansible-tmp-1533278813.32-240271484502410="` echo /root/.ansible/tmp/ansible-tmp-1533278813.32-240271484502410 `" ) && sleep 0'
    Using module file /usr/lib/python2.7/site-packages/ansible/modules/utilities/logic/async_status.py
    <127.0.0.1> PUT /root/.ansible/tmp/ansible-local-93pjZ45t/tmpnGyvP3 TO /root/.ansible/tmp/ansible-tmp-1533278813.32-240271484502410/async_status.py
    <127.0.0.1> EXEC /bin/sh -c 'chmod u+x /root/.ansible/tmp/ansible-tmp-1533278813.32-240271484502410/ /root/.ansible/tmp/ansible-tmp-1533278813.32-240271484502410/async_status.py && sleep 0'
    <127.0.0.1> EXEC /bin/sh -c '/usr/bin/python2 /root/.ansible/tmp/ansible-tmp-1533278813.32-240271484502410/async_status.py && sleep 0'
    <127.0.0.1> EXEC /bin/sh -c 'rm -f -r /root/.ansible/tmp/ansible-tmp-1533278813.32-240271484502410/ > /dev/null 2>&1 && sleep 0'
    ok: [localhost] => (item={'_ansible_parsed': True, '_ansible_item_result': True, '_ansible_item_label': {'volumes': [u'/sys/fs/cgroup:/sys/fs/cgroup:ro', u'/tmp:/run'], 'image': u'centos/systemd', 'command': u'/sbin/init', 'name': u'centos', 'capabilities': [u'SYS_ADMIN']}, u'ansible_job_id': u'847371111558.118', 'failed': False, u'started': 1, 'changed': True, 'item': {'volumes': [u'/sys/fs/cgroup:/sys/fs/cgroup:ro', u'/tmp:/run'], 'image': u'centos/systemd', 'command': u'/sbin/init', 'name': u'centos', 'capabilities': [u'SYS_ADMIN']}, u'finished': 0, u'results_file': u'/root/.ansible_async/847371111558.118', '_ansible_ignore_errors': None, '_ansible_no_log': False}) => {
        "ansible_job_id": "847371111558.118",
        "attempts": 1,
        "changed": false,
        "diff": {},
        "finished": 1,
        "invocation": {
            "module_args": {
                "api_version": "auto",
                "auto_remove": false,
                "blkio_weight": null,
                "cacert_path": null,
                "capabilities": null,
                "cert_path": null,
                "cleanup": false,
                "command": null,
                "cpu_period": null,
                "cpu_quota": null,
                "cpu_shares": null,
                "cpuset_cpus": null,
                "cpuset_mems": null,
                "debug": false,
                "detach": true,
                "devices": null,
                "dns_opts": null,
                "dns_search_domains": null,
                "dns_servers": null,
                "docker_host": "unix://var/run/docker.sock",
                "domainname": null,
                "entrypoint": null,
                "env": null,
                "env_file": null,
                "etc_hosts": null,
                "exposed_ports": null,
                "force_kill": true,
                "groups": null,
                "hostname": null,
                "ignore_image": false,
                "image": null,
                "init": false,
                "interactive": false,
                "ipc_mode": null,
                "keep_volumes": true,
                "kernel_memory": null,
                "key_path": null,
                "kill_signal": null,
                "labels": null,
                "links": null,
                "log_driver": null,
                "log_options": null,
                "mac_address": null,
                "memory": "0",
                "memory_reservation": null,
                "memory_swap": null,
                "memory_swappiness": null,
                "name": "centos",
                "network_mode": null,
                "networks": null,
                "oom_killer": null,
                "oom_score_adj": null,
                "paused": false,
                "pid_mode": null,
                "privileged": false,
                "published_ports": null,
                "pull": false,
                "purge_networks": false,
                "read_only": false,
                "recreate": false,
                "restart": false,
                "restart_policy": null,
                "restart_retries": null,
                "security_opts": null,
                "shm_size": null,
                "ssl_version": "1.0",
                "state": "absent",
                "stop_signal": null,
                "stop_timeout": null,
                "sysctls": null,
                "timeout": 60,
                "tls": false,
                "tls_hostname": "localhost",
                "tls_verify": false,
                "tmpfs": null,
                "trust_image_content": false,
                "tty": false,
                "ulimits": null,
                "user": null,
                "userns_mode": null,
                "uts": null,
                "volume_driver": null,
                "volumes": null,
                "volumes_from": null,
                "working_dir": null
            }
        },
        "item": {
            "ansible_job_id": "847371111558.118",
            "changed": true,
            "failed": false,
            "finished": 0,
            "item": {
                "capabilities": [
                    "SYS_ADMIN"
                ],
                "command": "/sbin/init",
                "image": "centos/systemd",
                "name": "centos",
                "volumes": [
                    "/sys/fs/cgroup:/sys/fs/cgroup:ro",
                    "/tmp:/run"
                ]
            },
            "results_file": "/root/.ansible_async/847371111558.118",
            "started": 1
        }
    }
    ok: [localhost] => {
        "censored": "the output has been hidden due to the fact that 'no_log: true' was specified for this result",
        "changed": false
    }

    TASK [Delete docker network(s)] ************************************************
    task path: /usr/lib/python2.7/site-packages/molecule/provisioner/ansible/playbooks/docker/destroy.yml:27
    skipping: [localhost] => {
        "censored": "the output has been hidden due to the fact that 'no_log: true' was specified for this result",
        "changed": false
    }
    META: ran handlers
    META: ran handlers

    PLAY RECAP *********************************************************************
    localhost                  : ok=2    changed=1    unreachable=0    failed=0

```
