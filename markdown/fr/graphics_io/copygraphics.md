# copygraphics

Copie un tracé vers le presse-papiers.

## Syntaxe

- copygraphics(fig)

## Argument d'entrée

- fig - objet figure.

## Description

<p>copygraphics copie la figure dans le presse-papiers.</p>

## Exemple

```matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
copygraphics(gcf());

```

## Voir aussi

[gcf](../graphics/gcf.md), [saveas](../graphics_io/saveas.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
