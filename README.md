# 🇪🇸 Configuración de Rails 6 con PostgreSQL
Para ejecutar este proyecto, es necesario agregar dos archivos adicionales: `.env` y `.env.postgresql.`

Las variables de entorno que debes agregar en el archivo .env son las siguientes:


```
DB_USER=postgres
DB_PASSWORD=123456
DB_HOST=db
```
Y las variables para el archivo .env.postgresql son:

```
POSTGRES_PASSWORD=123456
POSTGRES_USER=postgres
```

Después de agregar estas variables de entorno, procedemos a construir los contenedores con Docker Compose mediante los siguientes comandos:

```
# Construir los contenedores
docker-compose build

# Levantar los contenedores
docker-compose up

# Opcional: Dejar los contenedores corriendo en segundo plano
docker-compose up -d
```

Por último, debemos ejecutar la creación de la base de datos desde dentro del contenedor. Para ingresar a un bash dentro del contenedor, utiliza el siguiente comando:
```
docker exec -it [id_del_container] bash
```
Una vez dentro, ejecutamos el siguiente comando para crear la base de datos:
```
rails db:create
```

Estos comandos te permitirán configurar y ejecutar tu aplicación Rails junto con PostgreSQL de manera sencilla. Recuerda que, después de realizar estas configuraciones, la aplicación estará disponible en el puerto 3000. ¡Buena codificación!

---

# 🇺🇸 Setting up Rails 6 with PostgreSQL

To run this project, it is necessary to add two additional files: `.env` and `.env.postgresql`.

The environment variables to add in the `.env` file are as follows:

```
DB_USER=postgres
DB_PASSWORD=123456
DB_HOST=db
```

And the variables for the .env.postgresql file are:

```
POSTGRES_PASSWORD=123456
POSTGRES_USER=postgres
```

After adding these environment variables, we proceed to build the containers with Docker Compose using the following commands:

```
# Build the containers
docker-compose build

# Start the containers
docker-compose up

# Optional: Leave the containers running in the background
docker-compose up -d
```

Finally, we need to execute the creation of the database from within the container. Command to enter a bash shell inside the container:
```
docker exec -it [container_id] bash
```

Once inside, execute the following command to create the database:
```
rails db:create
```

These commands will allow you to configure and run your Rails application with PostgreSQL easily. Remember that, after making these configurations, the application will be available on port 3000. Happy coding!