curl \
   --include \
   http://localhost:8080/hello

export TOKEN=$(
  curl \
    --request POST \
    --silent \
    --url ${OKTA_OAUTH2_TOKEN_API?} \
    --header 'content-type: application/x-www-form-urlencoded' \
    --data 'grant_type=client_credentials' \
    --data "client_id=${OKTA_OAUTH2_CLIENT_ID?}" \
    --data "client_secret=${OKTA_OAUTH2_CLIENT_SECRET?}" \
    --data "audience=${OKTA_OAUTH2_SYSTEM_API?}" \
  | jq .access_token -r
)

curl \
   --include \
   --header "Authorization: Bearer ${TOKEN?}" \
   http://localhost:8080/hello
