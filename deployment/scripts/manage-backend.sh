#!/bin/bash

if [ "$1" == "up" ]; then
    echo "Menyalakan Docker Compose untuk Software/App..."
    docker compose --env-file .env -f ./deployment/compose/docker-compose.backend.yaml up --build

elif [ "$1" == "down" ]; then
    echo "Menghentikan Docker Compose untuk Software/App..."
    docker compose --env-file .env -f ./deployment/compose/docker-compose.backend.yaml down

else
    echo "Penggunaan salah! Gunakan: ./manage-backend.sh [up|down]"
fi