#!/bin/bash
docker run -it --rm --name certbot \
            -v "/Users/ernesto/Code/SRE/certbot/etc:/etc/letsencrypt" \
            -v "/Users/ernesto/Code/SRE/certbot/lib:/var/lib/letsencrypt" \
            certbot/certbot certonly --manual --preferred-challenges dns
