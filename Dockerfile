FROM alpine:latest

# Set enviornemnt
ENV EULA=TRUE

# Install dependencies
RUN apk add openjdk11
RUN apk add bash

# Copy Server files
COPY ./SIMPLE-SERVER-FILES /srv/SIMPLE-SERVER-FILES
COPY ./eula.txt /srv/SIMPLE-SERVER-FILES/

WORKDIR /srv/SIMPLE-SERVER-FILES

# Run inital server
RUN chmod +x ./startserver.sh
RUN ./startserver.sh

# Expose port
EXPOSE 25565

ENTRYPOINT ["./startserver.sh"]