#import "nelson_help.typ": *

= cancel <parallel:cancel>

Arrêter une fonction s'exécutant en arrière-plan.

== Syntaxe

- #raw("cancel(f)");

== Argument d'entrée

/ f: objet FevalFuture : scalaire ou tableau.

== Description

#strong[cancel(f)]; arrêtera chaque élément en cours d'exécution ou en file d'attente du tableau de Future #strong[f];.

 Un Future annulé marque une erreur dans sa propriété d'état.

 Certaines fonctions ne peuvent pas être interrompues avec#strong[Ctrl+C]; ou #strong[cancel];, comme la fonction #strong[save];.


== Exemple

``````matlab
fptr = str2func('pause');
for i = 1:100
 f(i) = parfeval(backgroundPool, fptr, 0, 5);
end
f(70)
cancel(f(70))
f(70)
``````


== Voir aussi

#nlink(<core:pause>)[pause];, #nlink(<parallel:parfeval>)[parfeval];, #nlink(<parallel:wait>)[wait];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
