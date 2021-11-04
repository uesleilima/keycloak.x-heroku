# Deploy Keycloak.X to Heroku

This repository deploys the [Keycloak.X](https://www.keycloak.org) Identity and Access Management Solution
to Heroku.  It is based of Keycloak's official docker image with some slight modifications to use the
Heroku variable for `PORT` and `DATABASE_URL` properly, also enabling the [edge](https://github.com/keycloak/keycloak-community/blob/main/design/keycloak.x/configuration.md#proxy-mode) 
proxy mode by default.

Keycloak.X uses Quarkus as the platform to build Keycloak. Compared to WildFly this gives faster startup-time 
and lower memory footprint which makes it possible for us to use a `free` dyno instance together with a `hobby-dev` 
Postgres database attached.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)
