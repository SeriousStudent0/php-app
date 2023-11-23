# Use the pulled PHP-FPM image as the base
FROM polytropo/dev-php-base:7.4

RUN apt-get update && \
    apt-get install -y \
    git=1:2.30.2-1+deb11u2 \
    wget=1.21-1+deb11u1 \
    ffmpeg=7:4.3.6-0+deb11u1 \
    lsb-release

RUN docker-php-ext-install bcmath && \
    docker-php-ext-install sockets

RUN <<EOF
curl --silent --show-error https://getcomposer.org/installer --output /tmp/composer-setup.php
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer -version=2.6.2
EOF

# Install additional packages
RUN apt-get update && apt-get install

# Set the working directory
WORKDIR /DockerTDdirectory

# Copy PHP application code into the container
COPY . .

# Expose a port
EXPOSE 5672

RUN composer install

# Start PHP-FPM
#CMD ["php-fpm", "-F"]