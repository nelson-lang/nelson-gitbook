#import "../nelson_help.typ": *

= isfir <signal_processing:4_digital_filters.isfir>

Détermine si un filtre numérique est FIR.

== Syntaxe

- #raw("tf = isfir(B, A)");

== Argument d'entrée

/ B: coefficients du numérateur.
/ A: coefficients du dénominateur.

== Argument de sortie

/ tf: true si le filtre est à réponse impulsionnelle finie.

== Description

#strong[isfir]; teste si le dénominateur ne contient pas de partie récursive.


== Exemple

``````matlab

tf = isfir([1 2 3], 1);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.filtord>)[filtord];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
