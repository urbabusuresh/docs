# Use a base Node image
FROM node:20-alpine


# Optionally copy your docs or config if needed
# COPY . .

# Install Mintlify CLI globally
# Install Mintlify CLI globally
RUN npm install -g @mintlify/cli
#mintlify dev
# Expose port (matches what Mintlify uses)
EXPOSE 5000

# Default command (can be overridden in docker-compose)
CMD ["mintlify", "dev", "-p", "5000", "--host", "0.0.0.0"]
