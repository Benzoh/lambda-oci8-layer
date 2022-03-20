# $1: your container name

mkdir -p ./export/opt/lib/
mkdir -p ./export/opt/bref-extra/
mkdir -p ./export/opt/bref/etc/php/conf.d

docker cp $1:/tmp/libaio.so.1 ./export/opt/lib/libaio.so.1
docker cp $1:/tmp/libclntshcore.so.21.1 ./export/opt/lib/libclntshcore.so.21.1
docker cp $1:/tmp/libclntsh.so.21.1 ./export/opt/lib/libclntsh.so.21.1
docker cp $1:/tmp/libocci.so.21.1 ./export/opt/lib/libocci.so.21.1
docker cp $1:/tmp/libnnz21.so ./export/opt/lib/libnnz21.so
docker cp $1:/tmp/libociicus.so ./export/opt/lib/libociicus.so
docker cp $1:/tmp/oci8.so ./export/opt/bref-extra/oci8.so
docker cp $1:/tmp/ext.ini ./export/opt/bref/etc/php/conf.d/ext-oci8.ini

cd ./export

zip -r dest/oci8.zip ./opt