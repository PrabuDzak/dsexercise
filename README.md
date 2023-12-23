# dsexercise

Data Scientist exercise at home using Redash

## Requirement

- Install [Docker](https://docs.docker.com/engine/install/)

## Setup

### Setup Infrastructure

```sh
# Copy default environment variable
cp env.sample .env

# Download Datasets 
make download-dataset

# Setup local Redash docker infra
make compose-up

# Setup local Redash internal database
make redash-create-database

# Create PostgreSQL Datasets table
make postgres-create-table
```

### Setup Redash

1. In browser visit: http://localhost:5000
1. Setup Redash admin account
1. Click "Connect a Data Source"
1. Select PostgreSQL and fill with following defaults:
    - Name: `local`
    - Host: `postgres`
    - Port: `5432`
    - User: `postgres`
    - Password: `postgres`
    - Database Name: `dsexercise`
1. Save and Test Connection
