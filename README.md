# docker-project

This project was meant to practice docker and it's usability. Usingo a backend and a database, we split each into it's own container: A container with node and a container with MySQL. 

The initial intention was to integrate both of them but in the end I went a little further and practiced a bit with docker compose, so now it is possible to start both containers with one docker compose CLI command.

## How to run

First we need to install node dependencies (mysql and express):

``` bash
npm install node/src/
```

Later on, you can start both containers while at the root of project running the simple command:

``` bash
docker compose up
```

It should download the images and build the necessary ones... This could take a while.

## Explanations

### Database

The MySQL database container will initialize with a few entries in a table 'produtos', which you can see ro alter, if you will, in [db/db.sql](db/db.sql). This sql file it's executed at container initialization or something like that...

### Node
The Node container will simply make the connection and wait for a request in endpoint [localhost:3000](localhost:3000), will display all entries in table 'produtos' on the screen. 

There is also an endpoint [localhost:3000/json](localhost:3000/json) which display the backend response untreated, in json format.
