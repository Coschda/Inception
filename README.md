# Inception - Projet 42

Déploiement d’un environnement WordPress avec Nginx et MariaDB via Docker.

## Contenu

- Nginx en reverse proxy avec SSL
- Base de données MariaDB
- WordPress configuré avec persistance des données

## Installation

1. Cloner le repo  
```bash
git clone <repo>
cd inception
```
2. Lancer les services
```bash
docker-compose up -d
```
3. Accéder à http://localhost

## Structure
- docker-compose.yml : configuration des conteneurs
- nginx/ : config Nginx
- wordpress/ : fichiers WordPress
- mariadb/ : données MariaDB

Projet 42 — Réalisé avec Docker