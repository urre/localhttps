# Self signed SSL cert for local development

## Setup

1. Create a self signed SSL cert on macOS (stored in /certs)
2. Trust the certificate in the macOS Keychain.
3. Add/remove a vhost in /etc/hosts (nicedomain.local in this example)

`./setup.sh` to do everything above in order.

> __Note:__ Change to your own domain in `create-cert.sh` and `trust-cert.sh`

## Run
+ Using docker-compose as a simple example and nginx-proxy for exposing both port 80 and 443 (optional)

`docker-compose up` to start

![](https://res.cloudinary.com/urre/image/upload/v1534948050/z8jqmokd1l8hpkxzpmdg.png)


### Notes
The cert will work in Chrome and Safari. Firefox doesn't trust certs in macOS Keychain any longer, since it is using it's own Certificate Manger. Import certs in Tools > Options > Advanced > Certificates: View Certificates
