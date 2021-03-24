FROM node:15

COPY . .

RUN apt-get update && apt-get install -y curl jq && npm install

ENTRYPOINT ["bash", "entrypoint.sh"]
