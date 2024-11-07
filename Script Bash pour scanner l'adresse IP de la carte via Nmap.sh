# Adresse IP de la carte Jetson Nano
IP_JETSON="172.18.2.142"  # Adresse IP privée de la carte
USER="bmond"  # Nom d'utilisateur
KEY_PATH="C:/Users/bmond/.ssh/id_rsa"  # Chemin de votre clé privée

# Tester la connexion SSH
echo "Test de la connexion SSH..."
ssh -i $KEY_PATH $USER@$IP_JETSON "hostname"

