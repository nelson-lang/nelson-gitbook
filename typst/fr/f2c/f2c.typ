#import "nelson_help.typ": *

= f2c <f2c:f2c>

Convertisseur Fortran vers C.

== Syntaxe

- #raw("f2c(src, dest)");
- #raw("r = f2c(src, dest)");
- #raw("[r, msg] = f2c(src, dest)");

== Argument d'entrée

/ src: une chaîne : fichier source Fortran.
/ dest: une chaîne : répertoire de destination.

== Argument de sortie

/ r: un booléen : true si succès.
/ msg: une chaîne : message d'erreur ou ' '.

== Description

#strong[f2c]; convertit les fichiers Fortran 66 et Fortran 77 en code C.


== Exemple

``````matlab
f2c([modulepath(nelsonroot(),'f2c','root'), '/tests/dgemm.f'], tempdir());
fileread([tempdir(), 'dgemm.c'])
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
