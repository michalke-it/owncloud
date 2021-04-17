#!/usr/bin/env bash

echo "Enabling custom SSL..."
sed -i '\@ErrorLog@i \\  SSLEngine on\n\  SSLCertificateFile /etc/apache2/ssl_certs/cert.pem\n\  SSLCertificateKeyFile /etc/apache2/ssl_certs/privkey.pem\n\  SSLCertificateChainFile /etc/apache2/ssl_certs/fullchain.pem\n\  ServerName ${SSL_DOMAIN}\n' /etc/apache2/sites-enabled/default.conf
a2enmod ssl

true
