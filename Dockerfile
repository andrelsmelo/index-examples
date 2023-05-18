# Use a base image com suporte para várias linguagens
FROM debian:latest

# Atualize os repositórios e instale as dependências necessárias
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python \
    python3 \
    python3-pip \
    nodejs \
    default-jdk \
    ruby \
    g++ \
    gcc \
    golang \
    groovy \
    perl \
    php \
    lua5.3 \
    octave \
    ghc \
    scala \
    erlang \
    rustc \
    julia \
    openjdk-11-jre-headless \
    && rm -rf /var/lib/apt/lists/*

# Copie todos os arquivos para a imagem
COPY . /app

# Defina o diretório de trabalho
WORKDIR /app

# Defina uma entrada padrão para execução interativa
CMD ["bash"]
