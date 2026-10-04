# unique

Valeurs uniques.

## 📝 Syntaxe

- C = unique(A)
- C = unique(A, 'rows')
- C = unique(A, 'stable')
- C = unique(..., 'TreatMissingAsDistinct', tf)
- [C, ia, ic] = unique(...)

## 📥 Argument d'entrée

- A - une variable Nelson (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
- tf - Traitement des valeurs manquantes : true (par défaut) chaque valeur manquante (NaN, <missing>, <undefined>) est distincte, false les valeurs manquantes répétées sont des doublons.

## 📤 Argument de sortie

- C - Données uniques de A.
- ia - Indice dans A : vecteur colonne.
- ic - Indice dans C : vecteur colonne.

## 📄 Description

<b>C = unique(A)</b> renvoie les éléments uniques du tableau <b>A</b> dans l'ordre trié.

<b>C = unique(A, 'rows')</b> considère chaque ligne de <b>A</b> comme une entité unique et renvoie les lignes uniques dans l'ordre trié.

Notez que l'option 'rows' ne prend pas en charge les cellules de tableaux.

<b>C = unique(A, 'stable')</b> renvoie les valeurs uniques dans l'ordre de premiere apparition.

<b>C = unique(..., 'TreatMissingAsDistinct', false)</b> considère chaque valeur manquante répétée comme un doublon : au plus une valeur manquante figure dans <b>C</b>. Par défaut (true), chaque valeur manquante de <b>A</b> figure dans <b>C</b>. Avec 'rows', deux lignes sont des doublons si elles ont des valeurs manquantes dans les mêmes colonnes et des valeurs non manquantes égales dans les autres colonnes. Cette option s'applique aux données numériques, string, categorical et table, et ne peut pas être combinée avec 'legacy'.

<b>[C, ia, ic] = unique(...)</b> étend n'importe quelle syntaxe précédente pour également renvoyer les vecteurs d'indices <b>ia</b> et <b>ic</b>.

Pour un vecteur <b>A</b>, les relations sont <b>C = A(ia)</b> et <b>A = C(ic)</b>.

Pour une matrice ou un tableau <b>A</b>, les relations sont <b>C = A(ia)</b> et <b>A(:) = C(ic)</b>.

Si l'option 'rows' est utilisée, les relations sont <b>C = A(ia, :)</b> et <b>A = C(ic, :)</b>.

Pour une table <b>A</b>, chaque ligne est comparée sur l'ensemble des variables et <b>C</b> est une table : avec 'sorted' (défaut) ses lignes sont ordonnées comme le fait <b>sortrows</b>, avec 'stable' dans l'ordre de première apparition ; <b>C = A(ia, :)</b> et <b>A = C(ic, :)</b>. 'rows' est implicite et 'legacy' n'est pas pris en charge.

## Fonction(s) utilisée(s)

std::sort, std::unique (stl)

## 💡 Exemples

```matlab
A = [10+20i 30+i 10i 0 -10i];
[C, ia, ic] = unique(A)

```

```matlab
A = {'hi', 'good'; 'good', 'tell'; 'hi', 'bye'}
[C, ia, ic] = unique(A)

```

Valeurs manquantes traitées comme des doublons

```matlab
A = [5 8 NaN NaN];
C1 = unique(A)
C2 = unique(A, 'TreatMissingAsDistinct', false)

```

## 🔗 Voir aussi

[sort](../data_analysis/sort.md).

## 🕔 Historique

| Version | 📄 Description                          |
| ------- | --------------------------------------- |
| 1.6.0   | version initiale                        |
| 2.0.0   | option stable ajoutée                   |
| 2.0.0   | option 'TreatMissingAsDistinct' ajoutée |

<!--
## 👤 Auteur

Allan CORNET
-->
