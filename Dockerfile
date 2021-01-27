FROM node:12

LABEL maintainer="Alexander Paul P. Quinit <paulquinit@gmail.com>"

# Install AdonisJs
RUN npm i -g @adonisjs/cli

# Change working directory
WORKDIR /var/www

EXPOSE 80

# Copy init.sh
COPY init.sh /init.sh

# Set init.sh permissions
RUN chmod 755 /init.sh

# Run init.sh
CMD ["/init.sh"]
