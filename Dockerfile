FROM python:3.12.6-slim


# Create nonroot user and group
RUN useradd --system --user-group --uid 1001 --home-dir /workdir nonroot

# Switch to nonroot user
USER nonroot:nonroot

# Set working directory
WORKDIR /workdir

# Install
COPY --chown=nonroot:nonroot requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
 && rm requirements.txt

# Build arguments
ARG VCS_REF=master
ARG BUILD_DATE=""
ARG VERSION="${VCS_REF}"

# http://label-schema.org/rc1/
LABEL org.opencontainers.image.title="yamlfix"
LABEL org.opencontainers.image.description="A simple opinionated yaml formatter that keeps your comments!"
LABEL org.opencontainers.image.source="https://github.com/otherguy/docker-yamlfix"
LABEL org.opencontainers.image.version="${VERSION}"
LABEL org.opencontainers.image.created="${BUILD_DATE}"
LABEL org.opencontainers.image.revision="${VCS_REF}"

# Maintainer
LABEL maintainer="otherguy <hi@otherguy.io>"

# Whalebrew
LABEL io.whalebrew.name="yamlfix"
LABEL io.whalebrew.config.keep_container_user="false"

ENTRYPOINT ["/workdir/.local/bin/yamlfix"]
