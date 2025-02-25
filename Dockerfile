#so y imagen base
FROM python:3.12-slim

#directorio de trabajo #git clone
WORKDIR /app

#copia de archivod #git clone . nos indica que se copiara todo
COPY. /app

#insatalacion de dependencias
RUN pip install --no-cache-dir -r requirements.txt

#puerto de la aplicacion expone el de docker no el de mi computadora
EXPOSE 5000

#comando para ejecutar la aplicacion
CMD ["python", "app.py"]