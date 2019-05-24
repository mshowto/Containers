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
