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
    sudo molecule test
```

Error message:
```
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
Lint completed successfully.
Skipping, no tests found.
--> Executing Ansible Lint on /tmp/jamespoc/ansible/playbook.yml...
Lint completed successfully.
--> Scenario: 'default'
--> Action: 'destroy'

    PLAY [Destroy] *****************************************************************

    TASK [Destroy molecule instance(s)] ********************************************
    changed: [localhost] => (item=None)
    changed: [localhost]

    TASK [Wait for instance(s) deletion to complete] *******************************
    ok: [localhost] => (item=None)
    ok: [localhost]

    TASK [Delete docker network(s)] ************************************************
    skipping: [localhost]

    PLAY RECAP *********************************************************************
    localhost                  : ok=2    changed=1    unreachable=0    failed=0


--> Scenario: 'default'
--> Action: 'dependency'
    to see the full traceback, use -vvv
ERROR! Unexpected Exception, this is probably a bug: local variable 'stdout' referenced before assignment
```
