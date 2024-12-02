#!/bin/bash

echo "Construyendo la imagen de Docker..."
docker build -t flask_app .

echo "Iniciando el contenedor..."
docker run -d -p 5000:5000 flask_app

echo "La aplicación Flask está disponible en http://<ip_vm>:5000"