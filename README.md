# hzrd149/docker-cors-anywhere

The docker image for [cors-anywhere](https://github.com/Rob--W/cors-anywhere).

### Run

```
docker run --rm ghcr.io/hzrd149/docker-cors-anywhere
```

### Envirionment Variables

Env  | Default | Description
---- | ------- | -----------
PORT | 8080    | Server listening port
KEY  |         | Content or filename of TLS Key
CERT |         | Content or filename of TLS Certificate
CORSANYWHERE_BLACKLIST | | If set, requests whose origin is listed are blocked.<br>Comma separated. Example: `https://abuse.example.com,http://abuse.example.com`
CORSANYWHERE_WHITELIST | | If set, requests whose origin is not listed are blocked.<br>If this list is empty, all origins are allowed.<br>Comma separated. Example: `https://good.example.com,http://good.example.com`
CORSANYWHERE_RATELIMIT | | Format: `<max requests per period> <period in minutes> <non-ratelimited hosts>`<br>For example, to blacklist abuse.example.com and rate-limit everything to 50 requests per 3 minutes, except for my.example.com and my2.example.com (which may be unlimited), use:<br>`50 3 my.example.com my2.example.com`
CORSANYWHERE_REMOVE_HEADERS | | If set, removes a list of headers from request.<br>Comma separated. Example: `referer,cookies`
CORSANYWHERE_REQUIRE_HEADERS | | If set, requires a list of headers on request.<br>Comma separated. Defaults to: `origin,x-requested-with`

## LICENSE

This repository is licensed under [MIT](LICENSE).

[cors-anywhere](https://github.com/Rob--W/cors-anywhere#license) is `Copyright (C) 2013 - 2016 Rob Wu rob@robwu.nl`
