#Assignment: named volumes

#Create postgres container with named volume 'psql-data' using version 9.6.1
docker container run -d --name psql1 -e POSTGRES_PASSWORD=mypassword -v $(pwd):/var/lib/postgresql/data postgres:9.6.1

#Check container logs
docker container logs psql1

#stop container
docker container stop psql1

#Create new postgres container with same named volume using 9.6.2
docker container run -d --name psql2 -e POSTGRES_PASSWORD=mypassword -v $(pwd):/var/lib/postgresql/data postgres:9.6.2
docker container logs psql2

#Stop container 
docker container stop psql2
