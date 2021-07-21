FROM mysql:5.7 as intech-database
# # Add a database
ENV MYSQL_DATABASE intech
# #ENV MYSQL_USER wordpress
# #ENV MYSQL_PASSWORD AJKuytg32
# # Copy the Script folder to docker-entrypoint-initdb.d/ which will be 
# # automac=tically executed during container startup
COPY ./script/ /docker-entrypoint-initdb.d/

FROM wordpress as intech-project
COPY . /var/www/html/


# When you run this Dockerfile then execute this command [ docker build -t intech --target intech-project . ] For Wordpress.
# When you run this Dockerfile then execute this command [ docker build -t database --target intech-database . ] For Mysql:5.7.
