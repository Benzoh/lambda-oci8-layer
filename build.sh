# $1: your container name

mkdir -p ./tmp/layer
mkdir -p ./tmp/layer/lib/
mkdir -p ./tmp/layer/bref-extra/
mkdir -p ./tmp/layer/bref/etc/php/conf.d
cd ./tmp/layer

docker cp $1:/tmp/libaio.so.1 ./lib/libaio.so.1
docker cp $1:/tmp/libclntshcore.so.21.1 ./lib/libclntshcore.so.21.1
docker cp $1:/tmp/libclntsh.so.21.1 ./lib/libclntsh.so.21.1
docker cp $1:/tmp/libocci.so.21.1 ./lib/libocci.so.21.1
docker cp $1:/tmp/libnnz21.so ./lib/libnnz21.so
docker cp $1:/tmp/libociicus.so ./lib/libociicus.so
docker cp $1:/tmp/oci8.so ./bref-extra/oci8.so
docker cp $1:/tmp/ext.ini ./bref/etc/php/conf.d/ext-oci8.ini

zip -r ../../dest/oci8.zip .
