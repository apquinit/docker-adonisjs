FROM node:8

LABEL maintainer="Alexander Paul P. Quinit <paulquinit@gmail.com>"

# Install AdonisJs
RUN npm i -g @adonisjs/cli

# Change working directory
WORKDIR /var/www

# Copy init.sh
COPY init.sh /init.sh

# Set init.sh permissions
RUN chmod 755 /init.sh

# Run init.sh
CMD ["/init.sh"]
