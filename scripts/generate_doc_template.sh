#!/usr/bin/env bash
set -e

service_name=$1
if [ -z "$service_name" ]; then
  echo "Uso: ./scripts/generate_doc_template.sh <service-name>"
  exit 1
fi

mkdir -p "docs/$service_name/schemas"

cat > "docs/$service_name/index.yaml" <<EOF
openapi: 3.0.3
info:
  title: ${service_name^} API
  version: 1.0.0
  description: |
    Documentação gerada automaticamente para o serviço **$service_name**.
servers:
  - url: https://api.exemplo.com/$service_name
paths: {}
EOF

echo "🧩 Template criado em docs/$service_name/index.yaml"