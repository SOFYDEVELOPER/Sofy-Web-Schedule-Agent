set -ex
echo "schedule run guid ${schedule_run_guid}"

curl --location --request POST "https://public.sofy.ai/webagent-service/public/scheduled-runs/${schedule_run_guid}/execute" \
--header "x-sofy-web-auth-key: ${subscription_key}" \
