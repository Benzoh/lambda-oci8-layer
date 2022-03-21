# $1: your container name

# mkdir -p ./export/opt/lib/
# mkdir -p ./export/opt/bref-extra/
# mkdir -p ./export/opt/bref/etc/php/conf.d
mkdir -p ./tmp/layer
cd ./tmp/layer

docker cp $1:/tmp/libaio.so.1 .
docker cp $1:/tmp/libclntshcore.so.21.1 .
docker cp $1:/tmp/libclntsh.so.21.1 .
docker cp $1:/tmp/libocci.so.21.1 .
docker cp $1:/tmp/libnnz21.so .
docker cp $1:/tmp/libociicus.so .
docker cp $1:/tmp/oci8.so .
docker cp $1:/tmp/ext.ini .

zip -r ../../dest/oci8.zip .