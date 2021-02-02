FROM httpd
# Mise à jour de la liste des packets (pour obtenir leurs versions)
RUN apt update
# Mise à jour des packets installés
RUN apt upgrade -y -q
# Copie des fichiers du dossier ./web dans /var/www/
COPY ./web /usr/local/apache2/htdocs/
RUN echo "Installation terminée, démarage du service Apache..."
# Exposition du port du container
EXPOSE 80
