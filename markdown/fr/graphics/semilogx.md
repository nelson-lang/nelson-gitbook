# semilogx

Graphique semi-logarithmique (axe x en échelle logarithmique).

## Syntaxe

- semilogx(X, Y)
- semilogx(X, Y, LineSpec)
- semilogx(Y)
- semilogx(Y, LineSpec)
- semilogx(ax, ...)
- semilogx(..., propertyName, propertyValue)
- go = semilogx(...)

## Argument d'entrée

- X - Coordonnées en échelle logarithmique : scalaire, vecteur ou matrice.
- Y - Coordonnées en échelle linéaire : scalaire, vecteur ou matrice.
- LineSpec - Style de ligne, marqueur et/ou couleur : vecteur de caractères ou chaîne scalaire.
- ax - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères. Voir l'aide de 'line' pour la liste des propriétés.
- propertyValue - Une valeur.

## Argument de sortie

- go - Un objet graphique : type ligne.

## Description

<p>
            semilogx(X, Y) trace des données en utilisant une échelle logarithmique en base 10 pour l'axe x et une échelle normale (linéaire) pour l'axe y.</p>

<p>
                semilogx utilise exactement la même syntaxe que la commande plot.</p>

## Exemples

```matlab
f = figure();
x = logspace(-1,2);
semilogx(x, x);
grid on

```

<img src="semilogx_1.svg" align="middle"/>

```matlab
f = figure();
x = logspace(-1, 2, 15);
y = 13 + x;
semilogx(x, y, 'x', 'MarkerFaceColor', [0 0.447 0.741])
grid on
```

<img src="semilogx_2.svg" align="middle"/>

## Voir aussi

[semilogy](../graphics/semilogy.md), [line](../graphics/line.md), [plot](../graphics/plot.md), [grid](../graphics/grid.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
