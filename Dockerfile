# Imagen base
FROM ubuntu:24.04

# Instalar dependencias básicas
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Instalar Ollama
RUN curl -sSL https://ollama.com/install.sh | sh

# Carpeta de trabajo
WORKDIR /app

# Comando por defecto al levantar el contenedor
CMD ["ollama", "run", "deepseek-r1:1.5b"]
