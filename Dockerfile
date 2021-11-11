FROM quay.io/keycloak/keycloak-x:15.0.2

COPY docker-entrypoint.sh /opt/jboss/tools

WORKDIR /opt/jboss/keycloak

RUN ./bin/kc.sh config --db=postgres
