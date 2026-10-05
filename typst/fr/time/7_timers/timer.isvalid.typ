#import "../nelson_help.typ": *

= timer.isvalid <time:7_timers.timer.isvalid>

Determiner quels handles de timer sont valides.

== Syntaxe

- #raw("tf = isvalid(t)");

== Argument d'entrée

/ t: Objet timer ou tableau d'objets timer.

== Argument de sortie

/ tf: Tableau logique de meme taille que #strong[t];. Les valeurs valent true pour les handles de timer valides et false pour les handles de timer supprimes.

== Description

#strong[isvalid]; verifie si des handles de timer referencent encore des objets timer vivants. L'appel de #strong[delete]; sur un timer invalide le handle.


== Exemple

Verifier un handle de timer avant et apres suppression.

``````matlab
t = timer('TimerFcn', @(src, event) disp('timer'));
beforeDelete = isvalid(t)
delete(t);
afterDelete = isvalid(t)
``````


== Voir aussi

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.timer.delete>)[delete];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
