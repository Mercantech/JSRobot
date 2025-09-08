# Brug nginx alpine image som base
FROM nginx:alpine

# Kopier alle statiske filer til nginx html directory
COPY . /usr/share/nginx/html/

# Kopier nginx konfiguration
COPY nginx.conf /etc/nginx/nginx.conf

# Eksponer port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
