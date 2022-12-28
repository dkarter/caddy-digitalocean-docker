FROM caddy:builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/digitalocean@9c71e343246b954976c9294a7062823605de9b9f

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy


