#import "nelson_help.typ": *

= wait <parallel:wait>

Attendre la complétion des futures.

== Syntaxe

- #raw("wait(f)");
- #raw("wait(f, state)");
- #raw("TF = wait(f, state, timeout)");

== Argument d'entrée

/ f: objet FevalFuture : scalaire ou tableau.
/ state: état d'attente : 'finished' (par défaut) ou 'running'
/ timeout: secondes d'attente : scalaire numérique réel.

== Argument de sortie

/ TF: logique : si chaque élément du tableau Future f se termine avant l'expiration du timeout, TF est true. Sinon, TF est false.

== Description

#strong[wait(f)]; suspend l'exécution jusqu'à ce que chaque élément du tableau Future #strong[f]; soit terminé.

 #strong[wait(f, state)]; suspend l'exécution jusqu'à ce que chaque élément du tableau Future #strong[f]; ait sa propriété 'State' définie sur #emph[state];.

 #strong[tf \= wait(f, state, timeout)]; suspend l'exécution pour un maximum de#emph[timeout];secondes.


== Exemple

``````matlab
fptr = str2func('pause');
for i = 1:15
 f(i) = parfeval(backgroundPool, fptr, 0, 5);
end
tic()
R = wait(f, 'finished');
toc()
``````


== Voir aussi

#nlink(<core:pause>)[pause];, #nlink(<parallel:fetchOutputs>)[fetchOutputs];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
