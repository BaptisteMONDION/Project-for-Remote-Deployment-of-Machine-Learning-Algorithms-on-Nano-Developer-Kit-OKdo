# Project of Remote Deployment of Machine Learning Algorithms on Nano Developer Kit OKdo

This project outlines the configuration and secure SSH connection steps to run machine learning algorithms remotely on an NVIDIA Jetson Nano Developer Kit OKdo.
Required Hardware and Software

Hardware

•	NVIDIA Jetson Nano Developer Kit OKdo

•	microSD card (at least 32 GB recommended)

•	USB cable for serial connection and power

•	Network connection (Ethernet)

Software

•	NVIDIA JetPack: System image for Jetson Nano, downloaded from the NVIDIA website.

•	BalenaEtcher: Used to flash the image onto the SD card.

•	SD Card Formatter: For formatting the SD card.

•	Putty: Used for serial and SSH connections.

•	VS Code with Remote-SSH extension: For running algorithms remotely.

•	Nmap: For scanning and identifying the IP address of the card.

Configuration Steps

1. Preparing the SD Card

•	Format the SD card using SD Card Formatter.

•	Download the JetPack image from NVIDIA's website and flash the SD card with BalenaEtcher.

2. Initial Connection and Configuration of the Nano Board

•	Insert the SD card into the Jetson Nano, connect the board to your PC via a USB cable, and power it up.

•	Use Putty to establish a serial connection:

o	Configure Putty in serial mode with the appropriate serial port (typically COMx on Windows).

o	Set the baud rate to 115200.

•	Initialize the Nano configuration by following the NVIDIA setup steps.

3. Configuring the SSH Connection

•	On the Nano board, generate an SSH certificate with the ssh-keygen command.

•	Copy the public SSH key to the authorized_keys file on the board to allow passwordless logins.

•	From your PC, use the generated private key to connect to the Nano board via SSH.

4. Identifying the IP Address

•	Identify the Nano's IP address on the network:

o	Use ping and nmap from an administrator terminal to scan the local network and find the board’s IP address.

•	Set the Nano's public and private IP addresses by configuring the router settings or through your service provider (Free in this case).

5. Running Programs Remotely with Visual Studio Code

•	Install the Remote-SSH extension on VS Code to access files on the Jetson Nano.

•	Set up a remote SSH connection in VS Code through the command terminal using authentication information (private key).

•	Run and test your machine learning algorithms directly from the VS Code environment by executing commands on the Nano board.

Testing and Validation

Each step of the configuration was tested and validated. Ping and SSH connection tests confirmed the stability of the remote connection. Once the configuration was complete, machine learning training programs could be run remotely, leveraging the resources of the Jetson Nano for inference or training projects.

