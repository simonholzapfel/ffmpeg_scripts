$containerName=$args[0]

mvn clean package
docker build --tag=$containerName .
docker kill $containerName
docker rm $containerName
docker run -d -p 8080:8080 --name $containerName $containerName
