# rgbplot

Tracer une palette de couleurs.

## Syntaxe

- rgbplot(cmap)

## Argument d'entrée

- cmap - Palette de couleurs : matrice à trois colonnes de triplets RGB.

## Description

<p>
            rgbplot(cmap) trace les intensités R (rouge), G (vert) et B (bleu) de la palette de couleurs cmap spécifiée.
        </p>

## Exemple

```matlab
f  = figure();
colormap = [0.2 0.1 0.5;
    0.1 0.5 0.8;
    0.2 0.7 0.6;
    0.8 0.7 0.3;
    0.9 1 0];
rgbplot(colormap);
```

<img src="rgbplot.svg" align="middle"/>

## Voir aussi

[plot](../graphics/plot.md), [colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
