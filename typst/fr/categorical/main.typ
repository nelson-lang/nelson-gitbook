#import "nelson_help.typ": *

= Tableaux categoriels

Le module Categorical fournit des tableaux dont les elements appartiennent a un ensemble fixe de categories textuelles.

== Functions

- #nlink(<categorical:addcats>)[addcats]: Ajouter des categories a un tableau categoriel.
- #nlink(<categorical:categorical>)[categorical]: Créer un tableau catégoriel.
- #nlink(<categorical:categories>)[categories]: Lister les categories d'un tableau categoriel.
- #nlink(<categorical:combinations>)[combinations]: Generer toutes les combinaisons de valeurs.
- #nlink(<categorical:countcats>)[countcats]: Compter les elements categoriels par categorie.
- #nlink(<categorical:histcounts>)[histcounts]: Compter les valeurs categorielles pour des resumes de type histogramme.
- #nlink(<categorical:iscategorical>)[iscategorical]: Determiner si un tableau est categoriel.
- #nlink(<categorical:iscategory>)[iscategory]: Determiner si des noms sont des categories.
- #nlink(<categorical:isordinal>)[isordinal]: Determiner si un tableau categoriel est ordinal.
- #nlink(<categorical:isprotected>)[isprotected]: Determiner si un tableau categoriel est protege.
- #nlink(<categorical:isundefined>)[isundefined]: Trouver les elements categoriels non definis.
- #nlink(<categorical:mergecats>)[mergecats]: Fusionner des categories dans un tableau categoriel.
- #nlink(<categorical:removecats>)[removecats]: Supprimer des categories d'un tableau categoriel.
- #nlink(<categorical:renamecats>)[renamecats]: Renommer les categories d'un tableau categoriel.
- #nlink(<categorical:reordercats>)[reordercats]: Reordonner les categories d'un tableau categoriel.
- #nlink(<categorical:setcats>)[setcats]: Definir la liste des categories d'un tableau categoriel.


#nested[
#pagebreak(weak: true)
#include "addcats.typ"
#pagebreak(weak: true)
#include "categorical.typ"
#pagebreak(weak: true)
#include "categories.typ"
#pagebreak(weak: true)
#include "combinations.typ"
#pagebreak(weak: true)
#include "countcats.typ"
#pagebreak(weak: true)
#include "histcounts.typ"
#pagebreak(weak: true)
#include "iscategorical.typ"
#pagebreak(weak: true)
#include "iscategory.typ"
#pagebreak(weak: true)
#include "isordinal.typ"
#pagebreak(weak: true)
#include "isprotected.typ"
#pagebreak(weak: true)
#include "isundefined.typ"
#pagebreak(weak: true)
#include "mergecats.typ"
#pagebreak(weak: true)
#include "removecats.typ"
#pagebreak(weak: true)
#include "renamecats.typ"
#pagebreak(weak: true)
#include "reordercats.typ"
#pagebreak(weak: true)
#include "setcats.typ"
]
