#import "nelson_help.typ": *

= whos <memory_manager:whos>

Liste les variables en mémoire ou dans un fichier .nh5 ou .mat avec tailles et types.

== Syntaxe

- #raw("whos");
- #raw("s = whos()");
- #raw("whos(scope)");
- #raw("s = whos(scope)");
- #raw("whos('-file', filename)");
- #raw("s = whos('-file', filename)");
- #raw("whos(... , var1, ..., varN)");
- #raw("s = whos(... , var1, ..., varN)");

== Argument d'entrée

/ scope: une chaîne : 'global', 'base', 'caller', 'local'.
/ var1, ..., varN: une chaîne : nom de la variable.
/ filename: chaîne : nom d'un fichier existant .nh5 ou .mat.

== Argument de sortie

/ st: contient des informations sur les variables dans le tableau de structures st.

== Description

#strong[whos]; affiche les variables courantes en mémoire ou dans un fichier .nh5 ou .mat.


== Exemple

``````matlab
clear
whos
A = 3
b= 3
whos
s = whos()
save([tempdir(), 'example_who.nh5'], 'A', 'b')
whos([tempdir(), 'example_who.nh5'])

``````


== Voir aussi

#nlink(<functions_manager:what>)[what];, #nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
