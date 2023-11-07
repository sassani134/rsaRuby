require 'colorize'
# require 'prog/keyGen'
# require 'prog/chiffrement'
# require 'prog/dechiffrement'

COMMANDS = ["keygen", "crypt", "decrypt", "help"]
OPTION = ["-f", "-c", "-t"]

def helpCommand
  puts ""
  puts "Scipt de chiffrement RSA"
  puts "Auteur : Samuel ASSANI".colorize(:blue)
  puts "Syntaxe :"
  puts "main.rb <commande> [<clé>] [<texte>] [switchs]"
  puts "Commande :"
  puts "keygen".colorize(:green) + " : Génère une paire de clé"
  puts "crytp".colorize(:green) + " : Chiffre <texte> pour le clé publique <clé>"
  puts "decrytp".colorize(:green) + " : Déchiffre <texte> pour le clé privée <clé>"
  puts "help".colorize(:green) + " : Affiche ce manuel"
  puts "Cle".colorize(:green) + " :"
  puts "Un".colorize(:green) + " fichier qui contient une clé publique monRSA (\"crypt\") ou une clé privée (\"decrypt\")"
  puts "Texte".colorize(:green) + " :"
  puts "Une phrase en clair (\"crypt\") ou une phrase chiffrée (\"decrypt\")"
  puts "-f <file>".colorize(:green) + " permet de choisir le nom des clé générés, monRSA.pub et monRSA.priv par défaut"
  puts "..."
end

def fichierNonConforme
  puts "Le fichier n'est pas conforme".colorize(:red)
  exit
end

#help or no args
if ARGV.length == 0 or ARGV[0] == "help" or ARGV[0] == "-h"
  helpCommand
  exit
end

if ARGV.[0] == "keygen"
  puts "generer une paire de clé dans un fichier monRSA.pub et monRSA.priv"
  exit
  if ARGV.length == 2 and ARGV[1] == "-f"
    puts "generer une paire de clé dans un fichier nomClé.pub et nomClé.priv"
    exit
  end
end

if ARGV[0] == "crypt"
  puts "crypt a besoin d'une cle".colorize(:red)
  exit

  if ARGV.length == 2 and ARGV[1] == "-c"
    puts "crypt a besoin d'une cle".colorize(:red)
    exit
  end

  if ARGV.length == 2 and ARGV[1] == "-t"
    puts "crypt a besoin d'une cle".colorize(:red)
    exit
  end

  if ARGV.length == 2 and ARGV[1] == "-f"
    puts "crypt a besoin d'une cle".colorize(:red)
    exit
  end

  if ARGV.length == 3 and ARGV[1] == "-c" and ARGV[2] == "-t"
    puts "crypt a besoin d'une cle et d'un texte".colorize(:red)
    exit
  end

  if ARGV.length == 3 and ARGV[1] == "-t" and ARGV[2] == "-c"
    puts "crypt a besoin d'une cle et d'un texte".colorize(:red)
    exit
  end
end


=begin
if ARGV.length == 1
  if ARGV[0] == "keygen"
    p "generer une paire de clé dans un fichier monRSA.pub et monRSA.priv"
  end
  if ARGV[0] == "crypt"
    puts "crypt a besoin d'une cle".colorize(:red)
  end
  if ARGV[0] == "decrypt"
    puts "decrypt a besoin d'une cle privee".colorize(:red)
  end
else
  puts "mauvaise syntaxe -h pour l'aide".colorize(:red)
end

if ARGV.length == 2
  if ARGV[0] == "crypt"
    puts "crypt a besoin d'une cle".colorize(:red)
  end
  if ARGV[0] == "decrypt"
    puts "decrypt a besoin d'une cle privee".colorize(:red)
  end
end
=end
=begin
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

=end


# algorithme d'euclide coefficient de Bézout
# modulo d'un entier
#petit theoreme de fermat

=begin
Bruno veux envoyer un msg a Alice
1. Alice clé pub et priv
2.Bruno utilise clé pub d'alice pour crypter son message
3.Alice recoit le message crypté
=end

=begin
p=5
q=17
n = 85
phi = 64
e = prime & e pgcd(e,phi) = 5

d*e

 d = e.modInverse(phi))

=end
