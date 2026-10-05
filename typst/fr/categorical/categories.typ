#import "nelson_help.typ": *

= categories <categorical:categories>

Lister les categories d'un tableau categoriel.

== Syntaxe

- #raw("names = categories(A)");
- #raw("names = categories(A, 'OutputType', type)");

== Argument d'entrée

/ A: Tableau categoriel d'entree.
/ type: Representation de sortie: #strong['char'];, #strong['string']; ou #strong['categorical'];.

== Argument de sortie

/ names: Noms de categories dans l'ordre des categories.

== Description

#strong[categories]; retourne la liste des categories associee a un tableau categoriel.

 Les elements non definis ne sont pas des categories. La sortie par defaut est un tableau de cellules de chaines de caracteres.


== Exemples

Retourner les noms de categories.

``````matlab
A = categorical({'red','blue','red'}); names = categories(A)
``````

Retourner les noms sous forme de strings.

``````matlab
A = categorical({'small','large'}); names = categories(A, 'OutputType', 'string')
``````


== Voir aussi

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:addcats>)[addcats];, #nlink(<categorical:renamecats>)[renamecats];, #nlink(<categorical:reordercats>)[reordercats];, #nlink(<categorical:iscategory>)[iscategory];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
