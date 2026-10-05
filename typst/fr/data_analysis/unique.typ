#import "nelson_help.typ": *

= unique <data_analysis:unique>

Valeurs uniques.

== Syntaxe

- #raw("C = unique(A)");
- #raw("C = unique(A, 'rows')");
- #raw("C = unique(A, 'stable')");
- #raw("C = unique(..., 'TreatMissingAsDistinct', tf)");
- #raw("[C, ia, ic] = unique(...)");

== Argument d'entrée

/ A: une variable Nelson (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
/ tf: Traitement des valeurs manquantes : true (par défaut) chaque valeur manquante (NaN, \<missing\>, \<undefined\>) est distincte, false les valeurs manquantes répétées sont des doublons.

== Argument de sortie

/ C: Données uniques de A.
/ ia: Indice dans A : vecteur colonne.
/ ic: Indice dans C : vecteur colonne.

== Description

#strong[C \= unique(A)]; renvoie les éléments uniques du tableau #strong[A]; dans l'ordre trié.

 #strong[C \= unique(A, 'rows')]; considère chaque ligne de #strong[A]; comme une entité unique et renvoie les lignes uniques dans l'ordre trié.

 Notez que l'option 'rows' ne prend pas en charge les cellules de tableaux.

 #strong[C \= unique(A, 'stable')]; renvoie les valeurs uniques dans l'ordre de premiere apparition.

 #strong[C \= unique(..., 'TreatMissingAsDistinct', false)]; considère chaque valeur manquante répétée comme un doublon : au plus une valeur manquante figure dans #strong[C];. Par défaut (true), chaque valeur manquante de #strong[A]; figure dans #strong[C];. Avec 'rows', deux lignes sont des doublons si elles ont des valeurs manquantes dans les mêmes colonnes et des valeurs non manquantes égales dans les autres colonnes. Cette option s'applique aux données numériques, string, categorical et table, et ne peut pas être combinée avec 'legacy'.

 #strong[\[C, ia, ic\] \= unique(...)]; étend n'importe quelle syntaxe précédente pour également renvoyer les vecteurs d'indices #strong[ia]; et #strong[ic];.

 Pour un vecteur #strong[A];, les relations sont #strong[C \= A(ia)]; et #strong[A \= C(ic)];.

 Pour une matrice ou un tableau #strong[A];, les relations sont #strong[C \= A(ia)]; et #strong[A(:) \= C(ic)];.

 Si l'option 'rows' est utilisée, les relations sont #strong[C \= A(ia, :)]; et #strong[A \= C(ic, :)];.

 Pour une table #strong[A];, chaque ligne est comparée sur l'ensemble des variables et #strong[C]; est une table : avec 'sorted' (défaut) ses lignes sont ordonnées comme le fait #strong[sortrows];, avec 'stable' dans l'ordre de première apparition ; #strong[C \= A(ia, :)]; et #strong[A \= C(ic, :)];. 'rows' est implicite et 'legacy' n'est pas pris en charge.


== Fonction(s) utilisée(s)

std::sort, std::unique (stl)

== Exemples

``````matlab
A = [10+20i 30+i 10i 0 -10i];
[C, ia, ic] = unique(A)

``````

``````matlab
A = {'hi', 'good'; 'good', 'tell'; 'hi', 'bye'}
[C, ia, ic] = unique(A)

``````

Valeurs manquantes traitées comme des doublons

``````matlab
A = [5 8 NaN NaN];
C1 = unique(A)
C2 = unique(A, 'TreatMissingAsDistinct', false)

``````


== Voir aussi

#nlink(<data_analysis:sort>)[sort];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.6.0], [version initiale],
  [2.0.0], [option stable ajoutée],
  [2.0.0], [option 'TreatMissingAsDistinct' ajoutée],
)

// Auteur: Allan CORNET
