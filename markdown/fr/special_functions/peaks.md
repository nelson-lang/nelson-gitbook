# peaks

Fonction peaks

## Syntaxe

- Z = peaks()
- Z = peaks(n)
- Z = peaks(Xi, Yi)
- [X, Y, Z] = peaks()
- [X, Y, Z] = peaks(n)
- [X, Y, Z] = peaks(Xi, Yi)

## Argument d'entrée

- n - Valeur représentant une grille 2-D : scalaire ou vecteur.
- Xi - coordonnées x des points.
- Yi - coordonnées y des points.

## Argument de sortie

- X - coordonnées x des points.
- Y - coordonnées y des points.
- Z - coordonnées z des points.

## Description

<p>
            peaks la fonction a la forme :</p>

<p>
                f(x, y) = 3*(1-x)^2*exp(-x^2 - (y+1)^2) - 10*(x/5 - x^3 - y^5)*exp(-x^2-y^2) - 1/3*exp(-(x+1)^2 - y^2)
            </p>

## Exemple

```matlab
x = -2:0.5:2;
y = 1:0.2:2;
[X, Y] = meshgrid(x, y);
Z = peaks(X, Y)

```

## Voir aussi

[meshgrid](../elementary_functions/meshgrid.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
