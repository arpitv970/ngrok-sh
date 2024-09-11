#!/bin/bash

# Ngrok Installer Script for Linux

# Download the Ngrok package for Linux ARM (suitable for Raspberry Pi)
echo "Downloading Ngrok..."
wget -q https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-arm.tgz -O ngrok.tgz

# Extract the package
echo "Extracting Ngrok..."
tar -xzf ngrok.tgz

# Move the binary to /usr/local/bin
echo "Installing Ngrok..."
sudo mv ngrok /usr/local/bin

# Clean up the downloaded files
echo "Cleaning up..."
rm ngrok.tgz

# Ask the user for the authentication token
read -p "Enter your Ngrok auth token: " AUTH_TOKEN

# Authenticate Ngrok with the token provided by the user
ngrok authtoken $AUTH_TOKEN

echo "Ngrok installation complete!"
echo "You can now use Ngrok by running 'ngrok http <port>'."
