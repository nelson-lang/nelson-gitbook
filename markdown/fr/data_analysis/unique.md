# unique

Valeurs uniques.

## 📝 Syntaxe

- C = unique(A)
- C = unique(A, 'rows')
- [C, ia, ic] = unique(...)

## 📥 Argument d'entrée

- A - une variable Nelson (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).

## 📤 Argument de sortie

- C - Données uniques de A.
- ia - Indice dans A : vecteur colonne.
- ic - Indice dans C : vecteur colonne.

## 📄 Description

<b>C = unique(A)</b> renvoie les éléments uniques du tableau<b>A</b> dans l'ordre trié.

<b>C = unique(A, 'rows')</b> considère chaque ligne de <b>A</b> comme une entité unique et renvoie les lignes uniques dans l'ordre trié.

Notez que l'option 'rows' ne prend pas en charge les cellules de tableaux.

<b>[C, ia, ic] = unique(...)</b> étend n'importe quelle syntaxe précédente pour également renvoyer les vecteurs d'indices <b>ia</b> et <b>ic</b>.

Pour un vecteur <b>A</b>, les relations sont <b>C = A(ia)</b> et <b>A = C(ic)</b>.

Pour une matrice ou un tableau <b>A</b>, les relations sont <b>C = A(ia)</b> et <b>A(:) = C(ic)</b>.

Si l'option 'rows' est utilisée, les relations sont<b>C = A(ia, :)</b> et <b>A = C(ic, :)</b>.

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

## 🔗 Voir aussi

[sort](../data_analysis/sort.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.6.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
