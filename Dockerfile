FROM alpine:3.12
RUN apk update
RUN apk upgrade

WORKDIR uncoverskill

# Instalation de Bash
RUN apk add --no-cache bash
RUN bash --version

# Instalation de git
RUN apk add --no-cache git=2.26.3-r0
RUN git version

# Instalation de node
RUN apk add --no-cache nodejs=12.22.1-r0 npm=12.22.1-r0

# Instalation de Angular 12
RUN npm install -g @angular/cli@12.0.3

# Instalation de java 11
RUN apk add --no-cache openjdk11=11.0.9_p11-r0

# Instalation de tomcat
RUN apk add --no-cache tomcat-native=1.2.26-r0

# Instalation de Postgresql
RUN apk add --no-cache postgresql


## LES PORT

# Angular
EXPOSE 4000-4999

CMD ["bash"]