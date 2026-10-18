#!/bin/bash

# Memeriksa apakah pengguna memasukkan argumen (up atau down)
if [ "$1" == "up" ]; then
    echo "Menyalakan Docker Compose untuk LLM..."
    docker compose --env-file .env -f ./deployment/compose/docker-compose.llm.yaml up

elif [ "$1" == "down" ]; then
    echo "Menghentikan Docker Compose untuk LLM..."
    docker compose --env-file .env -f ./deployment/compose/docker-compose.llm.yaml down

else
    echo "Penggunaan salah! Gunakan: ./manage-llm.sh [up|down]"
fi