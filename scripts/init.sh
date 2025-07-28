#!/bin/bash

echo "Initializing Grafana Dynamic Test Dashboard..."

# Wait for Grafana to start
until curl -s http://localhost:3000/api/health; do
  echo "Waiting for Grafana to start..."
  sleep 2
done

echo "Grafana is ready!"
