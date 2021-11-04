FROM quay.io/keycloak/keycloak-x:15.0.2

COPY docker-entrypoint.sh /opt/jboss/tools

ENTRYPOINT ["/opt/jboss/tools/docker-entrypoint.sh", "--auto-config"]
