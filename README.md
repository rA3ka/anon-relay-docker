# Deploy anon relay using Docker

Deploy a Anon Relay using docker and participate in expanding the Anyone network.

## To run locally

1. Run the containers:
   ```bash
   docker compose up -d
   ```
2. The anon address will be displayed in the Nginx container logs:
   ```bash
   docker compose logs anon-relay
   ```
