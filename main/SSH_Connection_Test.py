import paramiko

# Configuration des informations de connexion SSH
hostname = '172.18.2.142'  # Adresse IP privée de votre carte
port = 22
username = 'bmond'  # Nom d'utilisateur sur la carte Jetson Nano
private_key_path = 'C:/Users/bmond/.ssh/id_rsa'  # Chemin vers votre clé privée SSH

# Établir une connexion SSH
try:
    print("Tentative de connexion SSH à", hostname)
    ssh_client = paramiko.SSHClient()
    ssh_client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh_client.connect(hostname, port=port, username=username, key_filename=private_key_path)
    print("Connexion SSH réussie!")
    
    # Exécuter une commande pour tester
    stdin, stdout, stderr = ssh_client.exec_command('hostname')
    print("Commande exécutée : ", stdout.read().decode())
    
    ssh_client.close()

except Exception as e:
    print(f"Erreur de connexion SSH : {e}")
