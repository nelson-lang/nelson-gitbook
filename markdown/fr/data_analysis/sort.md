# sort

Trier les éléments d'un tableau (algorithme de tri rapide).

## 📝 Syntaxe

- B = sort(A)
- B = sort(A, dim)
- B = sort(..., direction)
- B = sort(..., name, value)
- B = sort(A, dim, direction, name, value)
- [B, I] = sort(...)

## 📥 Argument d'entrée

- A - une variable Nelson (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
- dim - Dimension le long de laquelle opérer : entier positif scalaire.
- direction - Direction du tri : 'ascend' (par défaut) ou 'descend'.
- name, value - paires nom-valeur en argument.

## 📤 Argument de sortie

- B - tableau trié.
- I - indices du tri.

## 📄 Description

Avec deux sorties, les éléments dont les clés de tri sont équivalentes conservent leur ordre initial. Les indices renvoyés pour des valeurs équivalentes sont croissants dans chaque groupe, quel que soit le sens du tri.

<b>sort</b> implémente l'algorithme de tri rapide.

Les paires nom-valeur peuvent être utilisées après la dimension et le sens du tri.

Arguments paires nom-valeur :

<b>
        'MissingPlacement'
      </b> - Placement des valeurs manquantes :<b>
        'auto'
      </b> (par défaut), <b>
        'first'
      </b>, <b>
        'last'
      </b>.

<b>
        'ComparisonMethod'
      </b> - Méthode de comparaison des éléments :<b>
        'auto'
      </b> (par défaut), <b>
        'real'
      </b>, <b>
        'abs'
      </b>.

Avec 'MissingPlacement' défini à 'last', les valeurs présentes sont triées dans le sens demandé et les valeurs manquantes sont placées après elles. Cette règle s'applique avec une ou deux sorties. Une chaîne manquante est distincte d'une chaîne vide.

Une valeur complexe est manquante si au moins une composante est NaN. Ces valeurs conservent leur ordre initial avec une ou deux sorties, y compris leur composante présente, pour chaque placement des valeurs manquantes et sens du tri.

## Fonction(s) utilisée(s)

qsort (stl)

## 📚 Bibliographie

Quick sort algorithm from Bentley and McIlroy's "Engineering a Sort Function". Software - Practice and Experience

## 💡 Exemples

ComparisonMethod

```matlab
A = [10+20i 30+i 10i 0 -10i];
B = sort(A,'ComparisonMethod', 'auto')
B = sort(A, 'ComparisonMethod', 'real')
B = sort(A, 'ComparisonMethod', 'abs')

```

MissingPlacement

```matlab
A = [NaN 3 6 0 NaN];
[B, I] = sort(A, 'MissingPlacement', 'auto')
[B, I] = sort(A, 'MissingPlacement', 'first')
[B, I] = sort(A, 'MissingPlacement', 'last')

```

## 🔗 Voir aussi

[issorted](../data_analysis/issorted.md), [unique](../data_analysis/unique.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
