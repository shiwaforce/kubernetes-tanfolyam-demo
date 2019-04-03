FROM mysql:7

#ENV MYSQL_DATABASE spring-data-rest-example
#ENV MYSQL_ROOT_PASSWORD Aa123456


SPRING_DATASOURCE_URL=jdbc:mysql://mysql:3306/spring-data-rest-example?useUnicode=true&characterEncoding=UTF-8&useSSL=false
SPRING_DATASOURCE_DRIVERCLASSNAME=com.mysql.jdbc.Driver SPRING_DATASOURCE_USERNAME=root SPRING_DATASOURCE_PASSWORD=Aa123456


COPY docker-entrypoint/create.sql /docker-entrypoint-initdb.d/create.sql
