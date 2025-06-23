#!/bin/bash

# Configurazione
DB_NAME="biblioteca"
COLLECTION_NAME="books"
FILE_PATH="books_real.json"
MONGO_HOST="localhost"
MONGO_PORT="27017"

# Comando mongoimport
mongoimport --host "$MONGO_HOST" \
            --port "$MONGO_PORT" \
            --db "$DB_NAME" \
            --collection "$COLLECTION_NAME" \
            --jsonArray \
            --file "$FILE_PATH"
# Verifica
if [ $? -eq 0 ]; then
    echo "Importazione completata con successo."
else
    echo "Errore durante l'importazione."
fi
