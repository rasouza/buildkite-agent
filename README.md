# buildkite-agent

## Features

- NodeJS 14.5
- NPM & Yarn
- Kustomize 4.2.0
- Code Climate Test Reporter
- Sentry CLI
- [Coming Soon] Elixir & Erlang OTP

## How to

```
docker build -t rasouza/buildkite-agent:nodejs . -f nodejs.Dockerfile
docker push rasouza/buildkite-agent -a
```

- Interactive shell

```
docker run -it --rm --entrypoint /bin/ash rasouza/buildkite-agent:nodejs
```