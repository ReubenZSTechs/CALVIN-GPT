#!/bin/bash

# Pindah otomatis ke root project agar path context build selalu valid
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
cd "$ROOT_DIR" || exit 1

COMPOSE_CMD="docker compose -p khotbah-frontend --env-file .env -f ./deployment/compose/docker-compose.frontend.yaml"

if [ "$1" == "up" ]; then
    echo "Menyalakan Docker Compose untuk Frontend..."
    $COMPOSE_CMD up --build

elif [ "$1" == "down" ]; then
    echo "Menghentikan Docker Compose untuk Frontend..."
    $COMPOSE_CMD down

elif [ "$1" == "rebuild" ]; then
    echo "Build ulang image frontend tanpa cache..."
    $COMPOSE_CMD build --no-cache

    echo "Menyalakan ulang..."
    $COMPOSE_CMD up


else
    echo "Penggunaan salah! Gunakan: ./deployment/scripts/manage-frontend.sh [up|down|rebuild]"
fi