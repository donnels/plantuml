# Dockerfile to create a container to run plantuml
# use a minimum debian as a base
FROM debian:testing-slim
        RUN mkdir -p /opt/app
        RUN mkdir -p /data
        WORKDIR /opt/app
        RUN apt-get update \
            && apt-get install -y --no-install-recommends \
                plantuml graphviz \
                fonts-liberation fonts-liberation2 \
                wget \
            && rm -rf /var/lib/apt/lists/*
        RUN mkdir -p /root/.local/share /.local/share
        ENV jarURL=https://github.com/plantuml/plantuml/releases/download/v1.2022.5/plantuml-1.2022.5.jar
        RUN wget $jarURL
        COPY . .
    # The entrypoint
    ENTRYPOINT ["/opt/app/wrapper.sh"]
    CMD ["/opt/app/reference.plantuml"]
