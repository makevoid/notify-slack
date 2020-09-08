require_relative 'env'

secrets = ENV["WEBHOOK"]

secrets = File.read(".slack_webhook").strip if File.exists? ".slack_webhook"

raise "WebHookNotSetError - The WEBHOOK env. var has not been set, aborting." unless secrets

message = ENV["MESSAGE"] || "Test message #{rand 1000}."

resp = PostWebhook.(secrets, message)
