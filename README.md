# Get started with Spring Boot and Auth0

https://auth0.com/blog/get-started-with-okta-spring-boot-starter

```bash
export OKTA_OAUTH2_DOMAIN="https://dev-xv6hd61k.us.auth0.com"
export OKTA_OAUTH2_ISSUER="${OKTA_OAUTH2_DOMAIN?}/"
export OKTA_OAUTH2_SYSTEM_API="${OKTA_OAUTH2_DOMAIN?}/api/v2/"
export OKTA_OAUTH2_TOKEN_API="${OKTA_OAUTH2_DOMAIN?}/oauth/token"
export OKTA_OAUTH2_CLIENT_ID=""
export OKTA_OAUTH2_CLIENT_SECRET=""
```

## Grant

### Auth0 Management API

Enable `Machine to Machine Applications` for your Auth0 Application.
