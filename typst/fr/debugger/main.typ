#import "nelson_help.typ": *

= Fonctions de débogage

Le module Débogueur de Nelson fournit des fonctions pour inspecter et analyser l'exécution des programmes.

 Il est conçu pour aider les utilisateurs à identifier les erreurs, tracer le flux d'exécution et mieux comprendre l'état des variables pendant l'exécution.

 Les fonctionnalités de débogage prises en charge par l'éditeur de texte s'intègrent à ces fonctions pour le débogage interactif.

== Functions

- #nlink(<debugger:dbclear>)[dbclear]: Supprimer les points d'arrêt lors du débogage.
- #nlink(<debugger:dbcont>)[dbcont]: Reprendre l'exécution après un point d'arrêt.
- #nlink(<debugger:dbdown>)[dbdown]: Descendre dans la pile d'appels en mode débogage.
- #nlink(<debugger:dbquit>)[dbquit]: Quitter le mode débogage.
- #nlink(<debugger:dbstack>)[dbstack]: Pile d'appels (call stack).
- #nlink(<debugger:dbstatus>)[dbstatus]: Lister tous les points d'arrêt lors du débogage.
- #nlink(<debugger:dbstep>)[dbstep]: Exécuter la ligne exécutable suivante lors du débogage.
- #nlink(<debugger:dbstop>)[dbstop]: Définir des points d'arrêt pour le débogage.
- #nlink(<debugger:dbup>)[dbup]: Monter dans la pile d'appels en mode débogage.


#nested[
#pagebreak(weak: true)
#include "dbclear.typ"
#pagebreak(weak: true)
#include "dbcont.typ"
#pagebreak(weak: true)
#include "dbdown.typ"
#pagebreak(weak: true)
#include "dbquit.typ"
#pagebreak(weak: true)
#include "dbstack.typ"
#pagebreak(weak: true)
#include "dbstatus.typ"
#pagebreak(weak: true)
#include "dbstep.typ"
#pagebreak(weak: true)
#include "dbstop.typ"
#pagebreak(weak: true)
#include "dbup.typ"
]
