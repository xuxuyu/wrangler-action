#!/bin/sh -l

apt-get update -y
apt-get install curl -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | sh
nvm install latest
npm i
npm i @cloudflare/wrangler -g
wrangler whoami
wrangler publish