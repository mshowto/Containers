#docker indirme linki 
https://docs.docker.com/install/ 

#docker versiyonunu öğrenmek için
docker version

#docker imajı aramak için
docker search "imaj ismi"

#docker imajı indirmek için
docker pull "imaj ismi"

#locak docker imajlarını görüntülemek için
docker images

#docker container çalıştırmak için ve container konsoluna bağlanmak için
docker run -it --name "container ismi" "imaj ismi"

#docker container çalıştırmak için (container'a konsoluna bağlanmaz)
docker run -d --name "container ismi" "imaj ismi"

#Özel bir porttan container çalıştırmak için 
docker run -d -p 6379:6379 --name "container ismi" "imaj ismi"


#docker containerlarını görüntülemek için
docker ps

#çalışan docker container'ını durdurmak için 
docker stop "container ismi"

#stop durumda ki container'ı çalıştırmak için
docker start "container ismi"

#docker container silmek için 
docker rm "container ismi"

#lokal docker imajını silmek için 
docker rmi "imaj ismi"

#çalışan bütün docker containerları durdurmak için
docker stop $(docker ps -q)

#bütün docker containerları kaldırmak için
docker rm -f $(docker ps -a -q)

#Dangling (taglenmiş imajlarla herhangi bir bağlantısı olmayan katmanlar) imajları kaldırmak için.
docker rmi $(docker images -f dangling=true -q)
