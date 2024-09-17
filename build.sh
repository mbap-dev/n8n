#!/bin/bash

# Verifica se o parâmetro foi passado
if [ -z "$1" ]; then
  echo "tag: $0 <tagname>"
  exit 1
fi

# Atribui o primeiro argumento à variável tagname
tagname=$1

docker build --platform linux/amd64 -t mbppereira/n8n:$tagname -f Dockerfile .

docker push mbppereira/n8n:$tagname