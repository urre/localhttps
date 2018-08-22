# Self signed SSL cert for local development

## Setup

1. Create a self signed SSL cert on macOS
2. Trust the certificate in the macOS Keychain.
3. Add/remove a vhost in /etc/hosts (nicedomain.local in this example)

`./setup.sh` to do everything above in order.

## Run

+ Using docker-compose as a simple example
+ Using nginx-proxy for exposing both port 80 and 443 (optional)

`./run.sh` to start

![](https://res.cloudinary.com/urre/image/upload/v1534948050/z8jqmokd1l8hpkxzpmdg.png)
