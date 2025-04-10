FROM ruby:3.2.2-slim

# Instala dependências básicas
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y curl libjemalloc2 libvips postgresql-client && \
    rm -rf /var/lib/apt/lists/*

# Instala ferramentas de build e dependências para gems
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libpq-dev libyaml-dev pkg-config && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /rails

# Copia o Gemfile e instala as gems
COPY Gemfile ./
RUN bundle install

# Copia o restante do projeto (opcional, dependendo do fluxo)
COPY . .