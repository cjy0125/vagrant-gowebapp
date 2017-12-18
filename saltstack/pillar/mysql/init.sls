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
    user:
        webapp:
            host: 192.168.133.%
            password_hash: "*F3A2A51A9B0F2BE2468926B4132313728C250DBF"
            grants:
                - ALL
        monitor:
            host: 192.168.133.%