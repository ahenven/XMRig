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

# Clone the xmrig repository
echo "Cloning the xmrig repository..."
git clone https://github.com/xmrig/xmrig.git

# Create a build directory
echo "Creating build directory..."
mkdir -p xmrig/build

# Change to the build directory
echo "Changing to build directory..."
cd xmrig/build

# Run cmake and make
echo "Running cmake and make..."
cmake .. -DWITH_HWLOC=OFF && make -j$(nproc)

echo "Moving config.json..."
mv ../../scripts/config.json .

echo "Setup complete."
