# Use a minimal base image
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Set the working directory inside the container
WORKDIR /app

# Copy the GoPhish binary and configuration files into the container
COPY gophish.exe config.json db/ /app/

# Expose the ports used by GoPhish
EXPOSE 3333 8080 8443 80

# Command to run GoPhish
CMD ["gophish.exe"]
