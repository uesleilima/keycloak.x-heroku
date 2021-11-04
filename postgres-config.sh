# Set database config from Heroku DATABASE_URL
if [ "$DATABASE_URL" != "" ]; then
    echo "Found database configuration in DATABASE_URL=$DATABASE_URL"

    regex='^postgres://([a-zA-Z0-9_-]+):([a-zA-Z0-9]+)@([a-z0-9.-]+):([[:digit:]]+)/([a-zA-Z0-9_-]+)$'
    if [[ $DATABASE_URL =~ $regex ]]; then
        DB_ADDR=${BASH_REMATCH[3]}
        DB_PORT=${BASH_REMATCH[4]}
        DB_DATABASE=${BASH_REMATCH[5]}
        DB_USER=${BASH_REMATCH[1]}
        DB_PASSWORD=${BASH_REMATCH[2]}

        echo "DB_ADDR=$DB_ADDR, DB_PORT=$DB_PORT, DB_DATABASE=$DB_DATABASE, DB_USER=$DB_USER, DB_PASSWORD=$DB_PASSWORD"

        export DB_ARGS="--db=postgres -Dkc.db.url.host=$DB_ADDR -Dkc.db.url.database=$DB_DATABASE --db-username=$DB_USER --db-password=$DB_PASSWORD"
    fi
fi
