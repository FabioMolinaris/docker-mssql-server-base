FROM mcr.microsoft.com/mssql/server

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=#SA_PASSWORD
ENV MSSQL_PID=Developer
ENV MSSQL_TCP_PORT=1433 
ENV TZ=Europe/Rome

EXPOSE 1433

WORKDIR /src

# run some sql to create a db and some table
# COPY filldata.sql ./filldata.sql
# RUN (/opt/mssql/bin/sqlservr --accept-eula & ) | grep -q "Service Broker manager has started" &&  /opt/mssql-tools/bin/sqlcmd -S localhost,1433 -U SA -P Bcnxmz09@ -i "/src/filldata.sql"

# recover a database backup
COPY recoverdata.sql ./recoverdata.sql
RUN mkdir /var/opt/mssql/backup
COPY 220512.bak /var/opt/mssql/backup
RUN (/opt/mssql/bin/sqlservr --accept-eula & ) | grep -q "Service Broker manager has started" &&  /opt/mssql-tools/bin/sqlcmd -S localhost,1433 -U SA -P Bcnxmz09@ -i "/src/recoverdata.sql"