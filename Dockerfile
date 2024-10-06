# Use tiangolo/nginx-rtmp as the base image
FROM tiangolo/nginx-rtmp

# Copy the custom nginx.conf file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Create the necessary directories for HLS
RUN mkdir -p /etc/nginx/html/hls

# Expose the RTMP port (1935) and HTTP port (80)
EXPOSE 1935 80

# Start the Nginx server with RTMP module
CMD ["nginx", "-g", "daemon off;"]

