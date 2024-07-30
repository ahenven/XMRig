#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update

# Upgrade packages
echo "Upgrading packages..."
sudo apt upgrade -y

# Install necessary packages
echo "Installing git, build-essential, and cmake..."
sudo apt install -y git build-essential cmake

# Clone the xmrig repository. Replace link with https://github.com/MoneroOcean/xmrig.git for algo switching
echo "Cloning the xmrig repository..."
git clone https://github.com/xmrig/xmrig.git

# Create a build directory inside xmrig
echo "Creating build directory inside xmrig..."
mkdir -p xmrig/build

# Change to the build directory
echo "Changing to build directory..."
cd xmrig/build

# Run cmake and make
echo "Running cmake and make..."
cmake .. -DWITH_HWLOC=OFF && make -j$(nproc)

# Move the built xmrig from /scripts/xmrig/build to ~/
echo "Moving built xmrig to home directory..."
mv xmrig ~/

# Move config.json to the home directory
echo "Moving config.json to home directory..."
mv ~/scripts/config.json ~/

# Move to home dir
echo "Moving to home directory"
cd

# Cleaning junk
echo "Removing scripts"
rm -rf ~/scripts

echo
echo "Setup complete."
