## CRUD MongoDB | Docker
Dans ce repo, nous allons voir un exemple CRUD Spring Boot Data Mongodb et Docker.

### Qu'est-ce que Docker ?
**Docker** est un moteur de conteneur qui permet de regrouper, d'expédier et de distribuer des applications sur des serveurs distribués.

### Technologies
---
- Java 11
- Spring Boot 2.7.7
- Spring Data Mongodb
- Lombok
- MapStruct
- Maven 3+
- Mongodb 5 / Robo 3T

### Exécuter et tester le projet
---
- Docker MongoDB : `docker pull mongo:latest` puis `docker run -d -p 27017:27017 --name poc-mongo mongo:latest`
- Dans `application.yml` veuillez modifier la valeur du host selon votre configuration local. Cette valeur soit `localhost` soit l'`addresse IP` de votre machine.
- Pour générer le fichier JAR, exécutez : `mvn clean install -DskipTests=true`
- Créer l'image Docker : `docker build --tag=crud-mongodb-docker:latest .`
- Exécuter le conteneur à partir d'image `docker run -p 8081:8081 crud-mongodb-docker:latest`
- Importer dans Postman la collection `new-mongodb-mcs.postman_collection.json` pour tester les APIs
- Vous pouver utiliser aussi l'url du Swagger ou importer l'url Swagger dans Postman
  - Les descriptions OpenAPI seront disponibles au chemin `/v3/api-docs` par défaut : http://localhost:8081/v3/api-docs/ et/ou http://localhost:8081/swagger-ui/index.html