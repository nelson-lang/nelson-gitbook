# unique

Valeurs uniques.

## Syntaxe

- C = unique(A)
- C = unique(A, 'rows')
- [C, ia, ic] = unique(...)

## Argument d'entrée

- A - une variable Nelson (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).

## Argument de sortie

- C - Données uniques de A.
- ia - Indice dans A : vecteur colonne.
- ic - Indice dans C : vecteur colonne.

## Description

<p>
            C = unique(A) renvoie les éléments uniques du tableau A dans l'ordre trié.</p>

<p>
                C = unique(A, 'rows') considère chaque ligne de A comme une entité unique et renvoie les lignes uniques dans l'ordre trié.</p>

<p>Notez que l'option 'rows' ne prend pas en charge les cellules de tableaux.</p>

<p>
                    [C, ia, ic] = unique(...) étend n'importe quelle syntaxe précédente pour également renvoyer les vecteurs d'indices ia et ic.</p>

<p>Pour un vecteur A, les relations sont C = A(ia) et A = C(ic).</p>

<p>Pour une matrice ou un tableau A, les relations sont C = A(ia) et A(:) = C(ic).</p>

<p>Si l'option 'rows' est utilisée, les relations sont C = A(ia, :) et A = C(ic, :).</p>

## Fonction(s) utilisée(s)

std::sort, std::unique (stl)

## Exemples

```matlab
A = [10+20i 30+i 10i 0 -10i];
[C, ia, ic] = unique(A)

```

```matlab
A = {'hi', 'good'; 'good', 'tell'; 'hi', 'bye'}
[C, ia, ic] = unique(A)

```

## Voir aussi

[sort](../data_analysis/sort.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.6.0   | version initiale |

## Auteur

Allan CORNET
