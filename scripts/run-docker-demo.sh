#!/bin/bash

# Script to run Docker commands and log them
LOG_FILE="../docker-commands-log.md"

echo "# Docker Commands Log" > $LOG_FILE
echo "" >> $LOG_FILE

# Build the Docker image
echo "## Building Docker Image" >> $LOG_FILE
echo "\`\`\`bash" >> $LOG_FILE
echo "docker build -t devops-docker-app ./app" >> $LOG_FILE
echo "\`\`\`" >> $LOG_FILE
echo "" >> $LOG_FILE
docker build -t devops-docker-app ./app

# Run the container
echo "## Running Docker Container" >> $LOG_FILE
echo "\`\`\`bash" >> $LOG_FILE
echo "docker run -p 3000:3000 devops-docker-app" >> $LOG_FILE
echo "\`\`\`" >> $LOG_FILE
echo "" >> $LOG_FILE
docker run -d -p 3000:3000 --name devops-app devops-docker-app

# List running containers
echo "## Listing Running Containers" >> $LOG_FILE
echo "\`\`\`bash" >> $LOG_FILE
echo "docker ps" >> $LOG_FILE
echo "\`\`\`" >> $LOG_FILE
echo "" >> $LOG_FILE
docker ps >> $LOG_FILE

# Stop and remove container
echo "## Stopping and Removing Container" >> $LOG_FILE
echo "\`\`\`bash" >> $LOG_FILE
echo "docker stop devops-app && docker rm devops-app" >> $LOG_FILE
echo "\`\`\`" >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Commands logged to $LOG_FILE"