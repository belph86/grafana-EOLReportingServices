# Grafana Dynamic Test Dashboard

Pre-configured Grafana container for visualizing test results with dynamic columns from PostgreSQL.

## Features
- ✅ Automatic JSON expansion to table columns
- ✅ Pre-configured PostgreSQL datasource
- ✅ Dynamic test result dashboard
- ✅ Color-coded pass/fail results
- ✅ Date and station filters

## Quick Start

### Using Docker directly
docker run -d \
  -p 3000:3000 \
  -e POSTGRES_HOST=your-postgres-host \
  -e POSTGRES_DB=central_reporting \
  -e POSTGRES_USER=reporting_user \
  -e POSTGRES_PASSWORD=your-password \
  ghcr.io/YOUR_USERNAME/grafana-dynamic-test-dashboard:latest

### Using Docker Compose (Recommended)
```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/grafana-dynamic-test-dashboard.git
cd grafana-dynamic-test-dashboard

# Configure your PostgreSQL connection
cp .env.example .env
# Edit .env with your database details

# Start Grafana
docker-compose up -d

# Access Grafana at http://localhost:3000
# Default login: admin/admin
