#!/bin/bash

# Set database config from Heroku DATABASE_URL
source /opt/jboss/tools/postgres-config.sh

exec /opt/jboss/keycloak/bin/kc.sh --auto-config $DB_ARGS
