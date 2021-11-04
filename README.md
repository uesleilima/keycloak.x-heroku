# Deploy Keycloak.X to Heroku

This repository deploys the [Keycloak.X](https://www.keycloak.org) Identity and Access Management Solution
to Heroku.  It is based of Keycloak's official docker image with some slight modifications to use the
Heroku variable for `PORT` and `DATABASE_URL` properly, also enabling the [edge](https://github.com/keycloak/keycloak-community/blob/main/design/keycloak.x/configuration.md#proxy-mode) 
proxy mode by default.

Keycloak.X uses Quarkus as the platform to build Keycloak. Compared to WildFly this gives faster startup-time 
and lower memory footprint which makes it possible for us to use a `free` dyno instance together with a `hobby-dev` 
Postgres database attached.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Known Issues
- Heroku is killing the dyno after it become unresponsive given the latency caused by the database migration execution. You can request for [changing the boot timeout](https://tools.heroku.support/limits/boot_timeout) manually for you app.

## References
- [Keycloak.X Docker Image](https://github.com/keycloak/keycloak-containers/tree/main/server-x)
- [Keycloak.X Server Configuration](https://github.com/keycloak/keycloak-community/blob/main/design/keycloak.x/configuration.md)
- [Introducing Keycloak.X Distribution](https://www.keycloak.org/2020/12/first-keycloak-x-release.adoc)
- [Deploy Keycloak to Heroku (Wildfly)](https://github.com/mieckert/keycloak-heroku)
