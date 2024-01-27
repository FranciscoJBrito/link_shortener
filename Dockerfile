#Ruby 3.0 para arquitecturas ARM
FROM ruby:3.0-bullseye

# Estableciendo el directorio de trabajo en /app
WORKDIR /app

# Copiando el Gemfile y el Gemfile.lock al contenedor
COPY Gemfile Gemfile.lock ./

# Instalando las dependencias de la aplicación
RUN bundle install

# Copiando el resto de la aplicación al contenedor
COPY . .

# Exponiendo el puerto 3000
EXPOSE 3000

# Comando para arrancar la aplicación
CMD ["rails", "server", "-b", "0.0.0.0"]
