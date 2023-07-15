# Use a lightweight web server as the base image
FROM nginx:latest

# Copy the HTML and CSS files to the web server root directory
COPY . /usr/share/nginx/html/
#COPY assets /usr/share/nginx/html/
#COPY forms /usr/share/nginx/html/
#COPY portfolio-details.html /usr/share/nginx/html/

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start the web server
CMD ["nginx", "-g", "daemon off;"]
