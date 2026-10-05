#import "nelson_help.typ": *

= renameStructField <data_structures:renameStructField>

Renommer les noms de champs d'un struct ou d'un tableau de structs.

== Syntaxe

- #raw("stOut = renameStructField(stIn, newNames)");
- #raw("stOut = renameStructField(stIn, oldNames, newNames)");

== Argument d'entrée

/ stIn: Un struct ou un tableau de structs.
/ newNames: un vecteur de caractères, un tableau de chaînes ou un tableau cellulaire de chaînes représentant les nouveaux noms de champs. Lorsqu'il est utilisé en deuxième argument, il doit contenir le même nombre d'éléments que le nombre de champs dans stIn.
/ oldNames: un vecteur de caractères, un tableau de chaînes ou un tableau cellulaire de chaînes représentant les noms de champs existants à renommer. Ignoré silencieusement si le nom de champ n'est pas présent dans stIn.

== Argument de sortie

/ stOut: Un struct ou un tableau de structs.

== Description

#strong[renameStructField]; renomme les noms de champs d'un struct ou d'un tableau de structs.

 Il prend en charge le renommage de tous les noms de champs simultanément ou le renommage de champs sélectionnés individuellement.


== Exemples

``````matlab
date_st = struct('day', 15, 'month' ,'August','year', 1974)
date_st = renameStructField(date_st, {'Day', 'Month', 'Year'})
``````

``````matlab
date_st = struct('day', 15, 'month' ,'August','year', 1974)
date_st = renameStructField(date_st, 'day', 'jour')
``````


== Voir aussi

#nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:rmfield>)[rmfield];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
