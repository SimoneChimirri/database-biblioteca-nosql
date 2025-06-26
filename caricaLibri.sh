#!/bin/bash

# Configurazione
DB_NAME="biblioteca"
COLLECTION_NAME="books"
FILE_PATH="books_real.json"
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
