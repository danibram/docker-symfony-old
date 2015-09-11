# docker-symfony-old
Docker Image with php symfony composer apache (linked to old symfonys, content folder)

## Example configuration ##

`docker-compose.yml`

### Development ###

    app:
        image: danibram/docker-symfony-old
        ports:
            - "80:80"
        volumes:
            - /var/www/myapp:/var/www/html