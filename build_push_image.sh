# membangun image dengan nama item-app dan letak file Dockerfile
docker build -t item-app .
# melihat semua image
docker images
# mengganti nama image dan tag nya
docker tag item-app:v1 agungfir10/item-app:v1
# login ke docker hub dengan password yang telah tersimpan di env
echo $PASSWORD_DOCKER_HUB | docker login -u fikrihelmi17 --password-stdin
# push atau mengunggah image ke registry docker hub
docker push agungfir10/item-app:v1