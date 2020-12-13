FROM docker:19.03 as docker

# hadolint ignore=DL3006
FROM adarnimrod/cron as supersonic
COPY --from=docker /usr/local/bin/docker /usr/local/bin/
ADD https://git.shore.co.il/nimrod/rcfiles/-/raw/master/Documents/bin/_docker-update /usr/local/bin/docker-update
# hadolint ignore=DL3002
USER root
RUN echo '0 */12 * * * docker-update' > /crontab
