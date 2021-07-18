FROM buildkite/agent
ENV KUSTOMIZE_VER 4.2.0
RUN apk add --update nodejs-current yarn npm \
    && curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv4.2.0/kustomize_v4.2.0_linux_amd64.tar.gz -o /kustomize.tar.gz \
    && curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 -o /usr/bin/cc-test-reporter \
    && tar -zxvf /kustomize.tar.gz \
    && mv /kustomize /usr/bin/kustomize \
    && chmod +x /usr/bin/kustomize \
    && chmod +x /usr/bin/cc-test-reporter \
    && git config --global user.email "alves.wm@gmail.com" \
    && git config --global user.name "R. A. Souza"
COPY hooks /buildkite/hooks/
RUN chmod -R +x /buildkite/hooks