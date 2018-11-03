FROM nginx:latest

RUN apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y curl ca-certificates && \
    curl -L -O /forward-logs https://github.com/HiveMP/forward-logs/releases/download/1.0.0/forward-logs-linux-x64 && \
    apt-get remove --purge --auto-remove -y curl ca-certificates && \
    rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list

CMD ["/forward-logs", "nginx", "-g", "daemon off;"]