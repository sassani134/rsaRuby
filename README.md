# TP_MonRSA.pdf

une application, qui permet de chiffrer &
déchiffrer des messages en RSA

## Réalisé par Samuel ASSANI M2

### Lancement


### Commande possible

ruby main.rb
ruby main.rb keygen # generer une paire de clé dans un fichier monRSA.pub et monRSA.priv
ruby main.rb crypt #X clé publique # X message ou Fichier
ruby main.rb decrypt # X clé privée # X message ou Fichier
ruby main.rb help
ruby main.rb -h

ruby main.rb keygen -f nomClé # generer une paire de clé dans un fichier nomClé.pub et nomClé.priv

ruby main.rb crypt -c fichierCléPublique # crypter un message avec la clé publique dans un fichier par défaut messageCrypté
ruby main.rb decrypt -c fichierCléPrivé # decrypter un message avec la clé privée dans un fichier par défaut messageDecrypté

ruby main.rb crypt -c fichierCléPublique -f fichierMessageCrypté
# crypter un message avec la clé publique dans un fichier fichierMessageCrypté.txt
ruby main.rb decrypt -c fichierCléPrivé -f  fichierMessageDecrypté
# decrypter un message avec la clé privée dans un fichier fichierMessageDecrypté.txt

ruby main.rb crypt -c fichierCléPublique -t "message a crypter"
# crypter un message avec la clé publique dans un fichier pardefault.txt
ruby main.rb decrypt -c fichierCléPrivé -t "message a decrypter"
# decrypter un message avec la clé privée dans un fichier pardefault.txt

ruby main.rb crypt -c fichierCléPublique -t "message a crypter" -f fichierMessageCrypté
# crypter un message avec la clé publique dans un fichier fichierMessageCrypté.txt
ruby main.rb decrypt -c fichierCléPrivé -t "message a decrypter" -f  fichierMessageDecrypté
# decrypter un message avec la clé privée dans un fichier fichierMessageDecrypté.txt

