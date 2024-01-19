# Utilisez une image de base contenant Go
FROM golang:latest

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers source dans le conteneur
COPY . .

# Compilez le programme Go
RUN go build -o natrium-server

# Déplacez le fichier build dans /usr/bin
RUN mv natrium-server /usr/bin/

# Exposez le port 3000
EXPOSE 3000

# Commande pour exécuter le programme après la compilation
CMD ["natrium-server"]