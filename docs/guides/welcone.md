---
title: Welcome
slug: welcome
category: documentation
---

# Introdução

Bem-vindo ao **Gateway do Kong da nossa organização** 👋

Este gateway centraliza as rotas de todos os serviços da empresa

---

## Fluxo de trabalho

1. Crie um novo arquivo de serviço em `kong/services/`.
2. Gere o template de documentação:
   ```bash
   make generate-doc name=my-service
