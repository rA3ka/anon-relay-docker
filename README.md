# Deploy Anon Relay using Docker

Deploy a Anon Relay using Docker and participate in expanding the Anyone Network.

## To run locally

1. Clone the repository:
   ```
   git clone https://github.com/rA3ka/anon-relay-docker
   ```

2. (Optional) In `docker-compose.yml`, edit the content below to set your preferred [anonrc](https://docs.anyone.io/sdk/native-sdk/man-anon-manual) parameters:
   ```
   configs:
     anonrc:
       content: |
         AgreeToTerms 1
         ControlPort 9051
         Log notice file /var/log/anon/notices.log
         ExitRelay 0
         ORPort 9001
         Nickname MyRelayNickname
         ContactInfo my@example.mail
   ```

3. Build the image and start the container:
   ```bash
   docker compose up -d
   ```
4. See the Anon logs to confirm the client has bootstrapped to 100% and is reachable on its ORPort:
   ```bash
   docker compose logs anon-relay
   ```
5. (Optional) Run Nyx to monitor the Anon service via the `ControlPort`:
   ```
   docker exec -it anon-relay nyx
   ```
   
## URLs
 * Website:           https://anyone.io
 * Documentation:     https://docs.anyone.io
 * Social:            https://x.com/AnyoneFDN

<br>

[![](https://cloud.phala.network/deploy-button.svg)](https://cloud.phala.network/templates/anyone-anon-relay)
