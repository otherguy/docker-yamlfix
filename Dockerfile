FROM python:3.11.0-slim

WORKDIR /workdir

# Install
COPY requirements.txt .
RUN pip install -r requirements.txt \
 && rm requirements.txt

# Build arguments
ARG VCS_REF=master
ARG BUILD_DATE=""
ARG VERSION="${VCS_REF}"

# http://label-schema.org/rc1/
LABEL org.label-schema.schema-version         '1.0'
LABEL org.label-schema.name                   'yamlfix'
LABEL org.label-schema.version                '1.0'
LABEL org.label-schema.description            'A simple opinionated yaml formatter that keeps your comments!'
LABEL org.label-schema.vcs-url                'https://github.com/otherguy/docker-yamlfix'
LABEL org.label-schema.version                '${VERSION}'
LABEL org.label-schema.build-date             '${BUILD_DATE}'
LABEL org.label-schema.vcs-ref                '${VCS_REF}'

# Maintainer
LABEL maintainer                              'otherguy <hi@otherguy.io>'

# Whalebrew
LABEL io.whalebrew.name                       'yamlfix'
LABEL io.whalebrew.config.keep_container_user 'false'
LABEL io.whalebrew.config.working_dir         '$PWD'

ENTRYPOINT ["/usr/local/bin/yamlfix"]
