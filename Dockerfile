# Usar una imagen base de Ubuntu 18.04 desde Docker Hub
FROM docker.io/library/ubuntu:18.04

# Etiqueta de mantenimiento
LABEL maintainer="test"

# Actualizar paquetes y agregar herramientas básicas
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    && apt-get clean



# Copiar un archivo o script de prueba (opcional)
COPY test-script.sh ./test-script.sh

# Asegurarse de que el script sea ejecutable
RUN chmod +x ./test-script.sh

# Comando predeterminado para ejecutar el script de prueba
CMD ["bash", "/app/test-script.sh"]
