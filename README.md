# buildkite-agent

## Features

- NodeJS
- NPM & Yarn
- Kustomize
- Code Climate Test Reporter
- [Coming Soon] Sentry CLI
- [Coming Soon] Elixir & Erlang OTP

## How to

```
docker build -t rasouza/buildkite-agent:TAG . -f DOCKERFILE
```

- Interactive shell

```
docker run -it --rm --entrypoint /bin/ash rasouza/buildkite-agend:TAG
```