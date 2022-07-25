docker run --name testmysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=passroot -d mysql:latest --max_connections=800

docker ps

docker exec -it testmysql bash
vào mysql:
	+mysql -uroot -ppassroot
	+show databases; 
	+CREATE USER 'testuser'@'%' IDENTIFIED BY 'testpass';
	+create database aliconcon;
	+GRANT ALL PRIVILEGES ON aliconcon. * TO 'testuser'@'%';
	+FLUSH PRIVILEGES;
	+show databases;