#import "../nelson_help.typ": *

= datevec <time:1_create_date_time_arrays.datevec>

Convertit un numéro de date série en vecteur date.

== Syntaxe

- #raw("[Y, M, D, H, MN, S] = datevec(dv)");
- #raw("V = datevec(dv)");

== Argument d'entrée

/ dv: un scalaire, vecteur, tableau multidimensionnel ou matrice sparse double : numero de date serie.

== Argument de sortie

/ Y, M, D, H, MN, S: double : Année, Mois, Jour, Heures, Minutes, Secondes.
/ V: vecteur de double : \[Année, Mois, Jour, Heures, Minutes, Secondes\].

== Description

#strong[datevec]; convertit un numéro de date série en vecteur date.

 Pour une entree sparse, #strong[datevec]; convertit les valeurs non nulles stockees et renvoie des sorties denses.

 Pour mesurer les performances, il est préférable d'utiliser les fonctions tic et toc.


== Exemple

``````matlab
datevec(now())
datevec(720840)
V = datevec([720840, now()])
[Y, M, D, H, MN, S] = datevec([720840, now()])
V = datevec(sparse([720840, now()]))

``````


== Voir aussi

#nlink(<time:7_timers.tic>)[tic];, #nlink(<time:7_timers.toc>)[toc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [entree sparse double prise en charge nativement],
)

// Auteur: Allan CORNET
