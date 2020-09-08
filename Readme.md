# notify-slack

Simple container to post a slack webhook message

### Args:

- WEBHOOK (the last part of the webhook url, which includes `org_id`, `channel_id` and `webhook_secret` separated by `/`)

- MESSAGE (the message you want to send to the channel)


### Usage:

### Run via Docker:

```sh
docker run makevoid/notify-slack -e WEBHOOK=".../.../..." -e MESSAGE="Deployment in $ENV completed"
```

### Run via Compose:

(uses the default message)

```sh
WEBHOOK=".../.../..." docker-compose up --build
```
