### 2.2. `Dockerfile`
```dockerfile
FROM grafana/grafana:10.2.0

USER root

# Copy provisioning files
COPY grafana/provisioning /etc/grafana/provisioning
COPY grafana/grafana.ini /etc/grafana/grafana.ini

# Copy init script
COPY scripts/init.sh /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/init.sh

# Install plugins if needed
RUN grafana-cli plugins install grafana-postgresql-datasource || true

# Set permissions
RUN chown -R grafana:grafana /etc/grafana

USER grafana

# Expose port
EXPOSE 3000

# Set environment defaults
ENV GF_SECURITY_ADMIN_USER=admin \
    GF_SECURITY_ADMIN_PASSWORD=admin \
    GF_USERS_ALLOW_SIGN_UP=false \
    GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource
