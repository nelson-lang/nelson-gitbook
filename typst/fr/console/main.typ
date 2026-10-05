#import "nelson_help.typ": *

= Console

Le module Console gere l'interaction avec la fenetre de commande de Nelson.

 Il fournit des outils pour controler l'affichage, gerer les entrees utilisateur et interroger les proprietes du terminal.

 Ces fonctions permettent aux scripts et applications de communiquer avec l'utilisateur par la console et d'adapter la sortie au terminal courant.

== Functions

- #nlink(<console:clc>)[clc]: Effacer la fenêtre de commande.
- #nlink(<console:consolebox>)[consolebox]: Affiche ou masque le terminal Windows associé à la session Nelson.
- #nlink(<console:input>)[input]: Afficher une invite et attendre l'entrée utilisateur.
- #nlink(<console:terminal_size>)[terminal\_size]: Interroger la taille de la fenêtre du terminal.


#nested[
#pagebreak(weak: true)
#include "clc.typ"
#pagebreak(weak: true)
#include "consolebox.typ"
#pagebreak(weak: true)
#include "input.typ"
#pagebreak(weak: true)
#include "terminal_size.typ"
]
