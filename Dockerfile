# Usa la imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de requisitos e instalar las dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto de la aplicación
COPY app.py .

# Exponer el puerto en el que corre Flask
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
