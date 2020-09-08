# notify-slack

Simple container to post a slack webhook message

### Args:

- WEBHOOK (the last part of the webhook url, which includes `org_id`, `channel_id` and `webhook_secret` separated by `/`)

- MESSAGE (the message you want to send to the channel)


### Usage:

```sh
docker run appliedblockchain/notify-slack -e WEBHOOK="a/b/c" -e MESSAGE="Deployment in $ENV completed"
```
