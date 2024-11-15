# Use the official Nginx base image
FROM nginx:alpine

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Add the key file to the default Nginx web directory
COPY myfile.key /var/www/html/myfile.key

# Expose the Nginx port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
