#!/bin/bash

# Configurazione
COLLECTION_NAME="authors"
FILE_PATH="authors_real.json"
MONGO_PORT="27017"

# Comando mongoimport
mongoimport \
            --uri "mongodb+srv://<username>:<password>@cluster0.ade6fgx.mongodb.net/biblioteca" \
            --port "$MONGO_PORT" \
            --collection "$COLLECTION_NAME" \
            --jsonArray \
            --file "$FILE_PATH" 
# Verifica
if [ $? -eq 0 ]; then
    echo "Importazione completata con successo."
else
    echo "Errore durante l'importazione."
fi