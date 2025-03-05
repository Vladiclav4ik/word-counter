# Указываем базовый образ для вашего контейнера
FROM ubuntu:latest

# Обновляем пакеты и устанавливаем зависимости, если они нужны
RUN apt-get update && apt-get install -y \
    g++ \
    dpkg-dev \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

# Копируем ваш файл .deb в контейнер
COPY word_counter.deb /tmp/

# Устанавливаем ваш .deb пакет
RUN dpkg -i /tmp/word_counter.deb || apt-get install -f

# Указываем команду, которая будет выполняться по умолчанию при запуске контейнера
CMD ["/usr/bin/word_counter"]
