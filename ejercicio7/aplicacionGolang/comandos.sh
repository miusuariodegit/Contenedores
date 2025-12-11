    1  history 1000
    2  sudo apt-get install openssh-server
    3  sudo apt-get install net-tools
    4  mkdir GolangCRUD && cd GolangCrud
    5  cd GolangCRUD/
    6  ls
    7  go
    8  sudo apt  install golang-go
    9  go mod init github.com/miusuariodegit/goapp
   10  touch GolangCrud.go
   11  package GolangCrud
   12  sudo apt install mailagent
   13  package GolangCrud
   14  sudo package GolangCrud
   15  nano GolangCrud.go 
   16  go get -u github.com/go-sql-driver/mysql
   17  ls
   18  nano GolangCrud.go 
   19  sudo apt-get install mysql-server-8.0 
   20  mysql -u root -p
   21  mysql  -p
   22  mysql -u root 
   23  sudo mysql -u root 
   24  sudo mysql -u usuario
   25  mysql -u usuario
   26  sudo mysql -u root 
   27  ls
   28  chmod 777 GolangCrud.go 
   29  ./GolangCrud.go 
   30  nano GolangCrud.go 
   31  ls
   32  cd GolangCRUD/
   33  ls
   34  go
   35  go -version
   36  go version
   37  go mod init
   38  ls
   39  nano go.mod 
   40  go run GolangCrud.go 
   41  go get github.com/gorilla/mux
   42  go run GolangCrud.go 
   43  sudo mysql -u root
   44  go run GolangCrud.go 
   46  ip a
   47  ifconfig
   48  sudo apt-get install curl
   49  curl http://localhost:8090/user/1
   50  curl http://localhost:8090/user/2
   51  curl -X DELETE http://localhost:8090/user/2
   52  curl -X POST -H "Content-Type: application/json" -d '{"Name":"John Doe","Email":"john@example.com"}' http://localhost:8090/user
   53  curl http://localhost:8090/user/1
   54  curl http://localhost:8090/user/3
   55  history -1000 > comandos.sh
   56  history 1000 > comandos.sh


curl -X POST -H "Content-Type: application/json" -d '{"Name":"John Doe","Email":"john@example.com"}' http://localhost:8090/user
curl -X GET http://localhost:8090/user/1
curl -X PUT -H "Content-Type: application/json" -d '{"Name":"Jane Doe","Email":"jane@example.com"}' http://localhost:8090/user/1
curl -X DELETE http://localhost:8090/user/1




#POST crea
$json = "{'Name':'Juan Gomez','Email':'juan@hotmail.com'}"
Invoke-RestMethod -Uri "http://192.168.184.162:8090/user" -Method POST -ContentType "application/json" -Body $json
#GET consulta por id
Invoke-RestMethod -Uri "http://192.168.184.162:8090/user/8" -Method GET
#PUT actualiza
$json = "{'Name':'Juan Perez','Email':'perez@hotmail.com'}"
Invoke-RestMethod -Uri "http://192.168.184.162:8090/user/6" -Method PUT -ContentType "application/json" -Body $json
#DELETE Borra
Invoke-RestMethod -Uri "http://192.168.184.162:8090/user/6" -Method DELETE



