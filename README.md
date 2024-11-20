This is a playground to test DNS in docker. We have a `dns` server and 2 `hosts`. The domain used is `dns-local-playground.com` and the two hosts resolve to:
- host1 -> joe
- host2 -> frank

Start the containers with:
```bash
docker-compose up
```

Test that we can reach the hosts with:
```bash
docker compose exec host1 ping frank.dns-local-playground.com
```
