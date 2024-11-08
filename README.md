# Project: Remote Deployment of Machine Learning Algorithms on Nano Developer Kit OKdo

This project outlines the configuration steps and secure SSH connection setup needed to remotely deploy machine learning algorithms on an NVIDIA Jetson Nano Developer Kit OKdo.

## Required Hardware and Software

### Hardware
- **NVIDIA Jetson Nano Developer Kit OKdo**
- **microSD card** (at least 32 GB recommended)
- **USB cable** for serial connection and power
- **Network connection** (Ethernet)

### Software
- **NVIDIA JetPack**: System image for Jetson Nano, downloadable from NVIDIA's website
- **BalenaEtcher**: For flashing the image onto the SD card
- **SD Card Formatter**: For formatting the SD card
- **Putty**: For serial and SSH connections
- **VS Code with Remote-SSH extension**: To run algorithms remotely
- **Nmap**: For scanning and identifying the IP address of the Nano

## Configuration Steps

### 1. Preparing the SD Card
- Format the SD card using **SD Card Formatter**.
- Download the **JetPack image** from NVIDIA's website and flash the SD card using **BalenaEtcher**.

### 2. Initial Connection and Configuration of the Nano Board
- Insert the SD card into the Jetson Nano, connect it to your PC via a USB cable, and power it up.
- Use **Putty** to establish a serial connection:
  - Configure Putty in serial mode, using the correct serial port (typically COMx on Windows).
  - Set the baud rate to **115200**.
- Follow the NVIDIA setup instructions to initialize the Nano.

### 3. Configuring the SSH Connection
- On the Nano, generate an SSH key pair using `ssh-keygen`.
- Copy the public SSH key to the **authorized_keys** file on the board to enable passwordless login.
- From your PC, connect to the Nano via SSH using the generated private key.

### 4. Identifying the IP Address
- Identify the Nano’s IP address on the network:
  - Use `ping` and `nmap` in an administrator terminal to scan the local network and locate the Nano’s IP address.
- Configure the Nano’s public and private IP addresses through the router settings or via your internet service provider (e.g., Free).

### 5. Running Programs Remotely with Visual Studio Code
- Install the **Remote-SSH** extension in VS Code to access files on the Jetson Nano.
- Set up a remote SSH connection in VS Code using the private key for authentication.
- Execute and test machine learning algorithms directly from the VS Code environment, running commands on the Nano.

## Testing and Validation

Each step was tested and validated. **Ping** and **SSH connection tests** confirmed the stability of the remote connection. After completing the configuration, machine learning training programs were successfully run remotely, utilizing the Jetson Nano’s resources for inference or training tasks.
