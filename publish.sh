aws lambda publish-layer-version \
    --layer-name lambda-oci8-layer \
    --description "My oci8 layer" \
    --license-info "MIT" \
    --zip-file fileb://dest/oci8.zip \
    --compatible-runtimes provided.al2 \
    --compatible-architectures x86_64