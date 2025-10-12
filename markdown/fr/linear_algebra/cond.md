# cond

Nombre de condition pour l'inversion.

## Syntaxe

- c = rcond(A, p)

## Argument d'entrée

- A - une valeur numérique : matrice carrée ou rectangulaire (double ou simple précision)
- p - type de norme : Inf, 'fro', 1, 2 (par défaut)

## Argument de sortie

- c - une valeur numérique : un scalaire.

## Description

<p>
            c = cond(A) retourne le nombre de condition en norme 2 pour l'inversion.</p>

<p>
                c = cond(A, p) retourne le nombre de condition en norme p, où p peut être 1, 2, Inf ou 'fro'.</p>

## Exemple

```matlab
X = rand(10, 10);
r = cond(X)
```

## Voir aussi

[rcond](../linear_algebra/rcond.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
