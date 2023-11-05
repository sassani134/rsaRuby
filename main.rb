require 'colorize'

COMMANDS = ["keygen", "crypt", "decrypt", "help"]
OPTION = [""]
#help or no args
if ARGV.length == 0 or ARGV[0] == "help" or ARGV[0] == "-h"
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
  exit
end



if ARGV.length == 1
  if ARGV[0] == "keygen"
    # require_relative 'prog/keyGen'
    # exit

    p "keygen"
  end

  if ARGV[0] == "crypt"
    p "crypt"
  end

  if ARGV[0] == "decrypt"
    p "decrypt"
  end
else
  p "mauvaise syntaxe -h pour l'aide"
end


if ARGV.length == 2
  if ARGV[1] == "-f"
    p "mauvaise syntaxe manque le nom d'un nfichier"
  end
end

if ARGV.length == 3
  if ARGV[1] == "-f"
    if ARGV[2].class == String
      if ARGV[0] == "keygen"
        # require_relative 'prog/keyGen'
        # exit

        p "keygen"
      end

      if ARGV[0] == "crypt"
        p "crypt"
      end

      if ARGV[0] == "decrypt"
        p "decrypt"
      end
    end
  end
end

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
