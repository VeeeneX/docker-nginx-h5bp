FROM nginx

# Base configuration
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/mime.types /etc/nginx/mime.types

# H5BP basic
ADD ./h5bp/basic.conf /etc/nginx/h5bp/basic.conf

# HB5P - locations
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/location/cache-busting.conf /etc/nginx/h5bp/location/cache-busting.conf
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/location/cross-domain-fonts.conf /etc/nginx/h5bp/location/cross-domain-fonts.conf
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/location/expires.conf /etc/nginx/h5bp/location/expires.conf
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/location/protect-system-files.conf /etc/nginx/h5bp/location/protect-system-files.conf

# H5BP - directives
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/directive-only/cache-file-descriptors.conf /etc/nginx/h5bp/directive-only/cache-file-descriptors.conf
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/directive-only/cross-domain-insecure.conf /etc/nginx/h5bp/directive-only/cross-domain-insecure.conf
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/directive-only/extra-security.conf /etc/nginx/h5bp/directive-only/extra-security.conf
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/directive-only/no-transform.conf /etc/nginx/h5bp/directive-only/no-transform.conf
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/directive-only/ssl-stapling.conf /etc/nginx/h5bp/directive-only/ssl-stapling.conf
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/directive-only/ssl.conf /etc/nginx/h5bp/directive-only/ssl.conf
ADD https://raw.githubusercontent.com/h5bp/server-configs-nginx/master/h5bp/directive-only/x-ua-compatible.conf /etc/nginx/h5bp/directive-only/x-ua-compatible.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
