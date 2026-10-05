#import "nelson_help.typ": *

= getpid <ipc:getpid>

Obtenir l'identifiant de processus Nelson.

== Syntaxe

- #raw("p = getpid()");
- #raw("v = getpid('available')");

== Argument d'entrée

/ 'available': une chaîne.

== Argument de sortie

/ p: un double : identifiant de processus courant.
/ v: un vecteur de double : liste des identifiants des processus Nelson (même architecture) en cours d'exécution pour l'utilisateur courant.

== Description

#strong[p \= getpid()]; renvoie l'identifiant du processus Nelson courant en cours d'exécution sur l'ordinateur.

 #strong[v \= getpid('available')]; renvoie la liste des identifiants des processus Nelson (même architecture) en cours d'exécution pour l'utilisateur courant.

 win64 et win32 sont deux architectures différentes mais elles peuvent s'exécuter en même temps.


== Exemple

``````matlab
p = getpid()
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
``````


== Voir aussi

#nlink(<os_functions:unix>)[unix];, #nlink(<ipc:ipc>)[ipc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
