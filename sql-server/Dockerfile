# Utiliza la imagen base oficial de SQL Server en Linux
FROM mcr.microsoft.com/mssql/server:2019-latest

# Establece las variables de entorno de SQL Server
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=TuClaveSuperSegura
ENV MSSQL_PID=Express

# Copia los archivos SQL de inicialización en la imagen
COPY ./sql-init/ /usr/src/sql-init

# Ejecuta los scripts SQL de inicialización al iniciar el contenedor
WORKDIR /usr/src/sql-init
RUN /opt/mssql/bin/sqlservr & \
    sleep 10s && \
    for file in *.sql; do /opt/mssql-tools/bin/sqlcmd -U sa -P $SA_PASSWORD -i $file; done

# Expone el puerto de SQL Server
EXPOSE 1433

# Tareas adicionales, como configuración de usuario y base de datos, pueden ser agregadas aquí

