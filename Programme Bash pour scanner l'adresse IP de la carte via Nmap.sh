# Scanner le réseau local pour identifier l'adresse IP
echo "Scan du réseau pour identifier l'adresse IP de la carte Jetson Nano..."
nmap -sn 172.18.2.0/24  # Utiliser le sous-réseau approprié

