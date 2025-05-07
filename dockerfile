# Use the official Nginx image
FROM nginx:alpine

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom index.html to the nginx html directory
COPY index.html /usr/share/nginx/html/

# Expose port 8888
EXPOSE 80

# Override the default Nginx port to 8888
CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/nginx.conf"]
    