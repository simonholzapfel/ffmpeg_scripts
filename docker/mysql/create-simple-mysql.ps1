$containerName=$args[0]
$rootPassword=$args[1]
$dbName=$args[2]
$userName=$args[3]
$userPW=$args[4]

$addUserArg=""

if($userName -And $userPW){
    $addUserArg="-e MYSQL_USER=$userName -e MYSQL_PASSWORD=$userPW"
}

docker run --name $containerName -e MYSQL_ROOT_PASSWORD=$rootPassword $addUserArg -e MYSQL_DATABASE=$dbName -p 3306:3306 -d mysql:latest 