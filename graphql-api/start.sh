#!/bin/sh -eu

export NODE_ENV=development

DEFAULT_PORT="8010"
export PORT="${PORT:-$DEFAULT_PORT}"

DEFAULT_ELASTICSEARCH_URL="http://localhost:9200"
export ELASTICSEARCH_URL="${ELASTICSEARCH_URL:-$DEFAULT_ELASTICSEARCH_URL}"

DEFAULT_CACHE_REDIS_URL="redis://localhost:6379/1"
export CACHE_REDIS_URL="${CACHE_REDIS_URL:-$DEFAULT_CACHE_REDIS_URL}"

DEFAULT_RATE_LIMITER_REDIS_URL="redis://localhost:6379/2"
export RATE_LIMITER_REDIS_URL="${RATE_LIMITER_REDIS_URL:-$DEFAULT_RATE_LIMITER_REDIS_URL}"

export REDIS_HOST=localhost                     
export REDIS_PORT=6379

pnpm ts-node ./src/app.ts
# To use an interactive debugger with the API codebase, comment out the
# command above and uncomment the following:
# pnpm node -r ts-node/register --inspect ./src/app.ts
