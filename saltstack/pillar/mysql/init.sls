mysql:
    lookup:
        server: mysql-server-5.6
        client: mysql-client-5.6
    server:
        root_password: foo
        lookup:
            config:
                sections:
                    mysqld:
                        bind_address: 0.0.0.0
