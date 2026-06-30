FROM quay.io/keycloak/keycloak:23.0.0

COPY realm-export.json /opt/keycloak/data/import/

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", \
  "--import-realm", \
  "--proxy=edge", \
  "--hostname-strict=false", \
  "--hostname-strict-https=false", \
  "--http-enabled=true"]
