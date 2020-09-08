SLACK_URL_BASE = "https://hooks.slack.com/services/"

PostWebhook = -> (secrets, message) {
  slack_url = "#{SLACK_URL_BASE}/#{secrets}"
  json = { "text" => "Deployment notification: \"#{message}\"" }.to_json
  args = { payload: json }
  resp = Net::HTTP.post_form slack_url, args
  p resp.body
}
