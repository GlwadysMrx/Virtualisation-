user=0
psswrd=0

sudo apt update 
sudo apt install apache2 -y
rm index.html
touch index.html
touch style.css
touch script.js


echo "Choisissez votre nom d'utilisateur"
read user

echo "Choissisez un mot de passe"
read psswrd 

sudo useradd -m $user -p $psswrd
