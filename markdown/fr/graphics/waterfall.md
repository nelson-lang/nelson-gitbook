# waterfall

graphique en cascade.

## Syntaxe

- waterfall(X, Y, Z)
- waterfall(Z)
- waterfall(Z, C)
- waterfall(X, Y, Z, C)
- waterfall(parent, ...)
- waterfall(..., propertyName, propertyValue)
- go = waterfall(...)

## Argument d'entrée

- X - coordonnées x : vecteur ou matrice.
- Y - coordonnées y : vecteur ou matrice.
- Z - coordonnées z : vecteur ou matrice.
- C - Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
- parent - une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.
- propertyName - une chaîne scalaire ou un vecteur de caractères en ligne.
- propertyValue - une valeur.

## Argument de sortie

- go - un objet graphique : type surface.

## Description

<p>
            waterfall crée un graphique en cascade, qui est un graphique en maillage avec un rideau partiel le long de la dimension y.</p>

<p>Cela donne un effet de 'cascade'.</p>

<p>La fonction prend les mêmes arguments d'entrée que la fonction mesh.</p>

## Exemples

```matlab
f = figure();
Z = peaks();
waterfall(Z);
title ("fonction waterfall");

```

<img src="waterfall_1.svg" align="middle"/>

```matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
p = waterfall(X, Y, Z);

```

<img src="waterfall_2.svg" align="middle"/>

## Voir aussi

[mesh](../graphics/mesh.md), [meshgrid](../elementary_functions/meshgrid.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
