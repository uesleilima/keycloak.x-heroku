FROM quay.io/keycloak/keycloak-x:15.0.2

COPY docker-entrypoint.sh /opt/jboss/tools

CMD ["--auto-config"]
