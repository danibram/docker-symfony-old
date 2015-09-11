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

## Instructions ##

1. Init docker
2. Go to your website path
3. Run docker-compose up -d 
4. Run docker exec -i -t CONTAINER_NAME bash (You can get it running 'docker-compose ps')
5. Inside the website machine run, composer install to start the configuration
6. Enjoy!
