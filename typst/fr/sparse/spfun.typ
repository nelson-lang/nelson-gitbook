#import "nelson_help.typ": *

= spfun <sparse:spfun>

Applique une fonction aux elements non nuls d'une matrice sparse.

== Syntaxe

- #raw("R = spfun(fun, S)");

== Argument d'entrée

/ fun: un handle de fonction applique au vecteur des valeurs non nulles.
/ S: une matrice sparse. Une matrice pleine est d'abord convertie en sparse.

== Argument de sortie

/ R: une matrice sparse de meme taille et de memes positions non nulles que #strong[S];, dont les valeurs sont #strong[fun]; appliquee aux valeurs non nulles de #strong[S];.

== Description

#strong[spfun]; evalue #strong[fun]; uniquement sur les elements non nuls de #strong[S];, ce qui evite d'appliquer la fonction aux nombreux zeros stockes et preserve la structure sparse.

 Le handle de fonction doit accepter et retourner un vecteur colonne de meme longueur. Toute valeur nulle produite est retiree du resultat sparse.


== Exemples

``````matlab
S = sparse([2 0 -3; 0 4 0]);
R = spfun(@(x) x .* 10, S)

``````

``````matlab
S = sparse([2 0; 0 4]);
R = spfun(@(x) 1 ./ x, S)

``````


== Voir aussi

#nlink(<sparse:spones>)[spones];, #nlink(<sparse:nonzeros>)[nonzeros];, #nlink(<elementary_functions:7_indexing_dimensions.find>)[find];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
