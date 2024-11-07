# Générer une paire de clés SSH
echo "Génération de la clé SSH..."
ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ""

# Afficher la clé publique générée
echo "Voici la clé publique générée :"
cat ~/.ssh/id_rsa.pub

# Copier la clé publique dans le fichier authorized_keys
echo "Ajout de la clé publique dans le fichier authorized_keys..."
mkdir -p ~/.ssh
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

# Assurer que les permissions sont correctes
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

# Démarrer le service SSH si nécessaire
echo "Démarrage du service SSH..."
sudo systemctl start ssh

# Vérification de l'état du service SSH
echo "État du service SSH :"
sudo systemctl status ssh
