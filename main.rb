require 'colorize'


#help or no args
if ARGV.length == 0 or ARGV[0] == "help"
  puts "Syntaxe :"
  puts "main.rb <commande> [<clé>] [<texte>] [switchs]"
  puts "Commande :"
  puts "keygen".colorize(:green) + " : Génère une paire de clé"
  puts "crytp".colorize(:green) + " : Chiffre <texte> pour le clé publique <clé>"
  puts "decrytp".colorize(:green) + " : Déchiffre <texte> pour le clé privée <clé>"
  puts "help".colorize(:green) + " : Affiche ce manuel"
  puts "Clé".colorize(:green) + " :"
  puts "Un".colorize(:green) + " fichier qui contient une clé publique monRSA (\"crypt\") ou une clé privée (\"decrypt\")"
  puts "Texte".colorize(:green) + " :"
  puts "Une phrase en clair (\"crypt\") ou une phrase chiffrée (\"decrypt\")"
  puts "Switchs".colorize(:green) + ":"
  puts "-f <file>".colorize(:green) + " permet de choisir le nom des clé générés, monRSA.pub et monRSA.priv par défaut"
  puts "..."
  exit
end

