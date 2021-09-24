wget https://oss.virjar.com/majora/majora-lite.zip -O majora-lite.zip;
docker build -f Dockerfile.Lite . -t majora-lite;
docker images |grep majora-lite;
wget https://oss.virjar.com/majora/majora-pro.zip -O majora-pro.zip;
docker build -f Dockerfile.Pro . -t majora-pro;
docker images |grep majora-pro;