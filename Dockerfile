FROM n8nio/n8n:1.68.1

ENV N8N_PAYLOAD_SIZE_MAX=32

ENV GENERIC_TIMEZONE=America/Sao_Paulo

USER root

RUN npm install -g easy-pdf-merge

USER node

RUN mkdir -p ~/.n8n/nodes

RUN cd ~/.n8n/nodes && npm i n8n-nodes-text-manipulation

RUN cd ~/.n8n/nodes && npm i n8n-nodes-edit-image-plus

RUN cd ~/.n8n/nodes && npm i n8n-nodes-document-generator

RUN cd ~/.n8n/nodes && npm i @splainez/n8n-nodes-phonenumber-parser

RUN cd ~/.n8n/nodes && npm i n8n-nodes-browserless

RUN cd ~/.n8n/nodes && npm i n8n-nodes-data-validation

RUN cd ~/.n8n/nodes && npm i n8n-nodes-evolution-api

RUN cd ~/.n8n/nodes && npm i n8n-nodes-oracle-database-parameterization

# RUN cd ~/.n8n/nodes && npm i @skriptfabrik/n8n-nodes-barcode
