wget https://oss.virjar.com/majora/majora-lite.zip -O majora-lite.zip;
docker build -f Dockerfile.Lite . -t registry.cn-beijing.aliyuncs.com/virjar/majora:lite;
docker push registry.cn-beijing.aliyuncs.com/virjar/majora:lite;
docker images |grep majora-lite;
wget https://oss.virjar.com/majora/majora-pro.zip -O majora-pro.zip;
docker build -f Dockerfile.Pro . -t egistry.cn-beijing.aliyuncs.com/virjar/majora:pro;
docker push registry.cn-beijing.aliyuncs.com/virjar/majora:pro;
docker images |grep majora-pro;