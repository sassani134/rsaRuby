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

if ARGV[0] == "keygen"
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

  if ARGV.length == 2 and ARdGV[1] == "-c"
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
