# bar

Diagramme en barres.

## Syntaxe

- bar(Y)
- bar(X, Y)
- bar(..., width)
- bar(..., color)
- bar(..., propertyName, propertyValue)
- bar(ax, ...)
- b = bar(...)

## Argument d'entrée

- X - abscisses : scalaire, vecteur ou tableau de chaînes.
- Y - ordonnées : vecteur.
- width - scalaire, 0.8 (par défaut).
- color - une chaîne scalaire ou un vecteur ligne de caractères : nom de couleur ou nom court de couleur.
- propertyName - une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - une valeur.
- ax - Objet axes.

## Argument de sortie

- b - objet graphique patch.

## Description

<p>
            bar(X, Y) crée un diagramme en barres à partir de deux ensembles de vecteurs X-Y.</p>

<p>Lorsqu'un seul argument est fourni (Y), il est interprété comme un vecteur de valeurs Y, et les abscisses X sont générées comme une séquence de 1 au nombre d'éléments du vecteur Y.</p>

<p>Vous pouvez éventuellement spécifier la largeur des barres.</p>

<p>Une valeur de 1.0 fera que chaque barre touche exactement ses voisines, tandis que la largeur par défaut est fixée à 0.8.</p>

## Exemples

```matlab
f = figure();
y = [ 91 75 123.5 105 150 131 203 179 249 226 281.5];
bar(y);

```

<img src="bar_1.svg" align="middle"/>

```matlab
f = figure();
y = [ 91 75 123.5 105 150 131 203 179 249 226 281.5];
bar(y, 0.5);

```

<img src="bar_2.svg" align="middle"/>

```matlab
f = figure();
x = 1900:10:2000;
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(x, y, 'r');

```

<img src="bar_3.svg" align="middle"/>

```matlab
f = figure();
x = [ "Summer", "Spring", "Winter", "Autumn"];
y = [ 2 1 4 3];
bar(x, y);

```

<img src="bar_4.svg" align="middle"/>

```matlab
f = figure();
y = [91 75 123.5 105 150 131 203 179 249 226 281.5];
bar(y, 'FaceColor', [0 .5 .5], 'EdgeColor', [0 .9 .9], 'LineWidth', 1.5)

```

<img src="bar_5.svg" align="middle"/>

## Voir aussi

[hist](../graphics/hist.md), [patch](../graphics/patch.md).

## Historique

| Version | Description                                           |
| ------- | ----------------------------------------------------- |
| 1.0.0   | version initiale                                      |
| 1.12.0  | Gestion du nom de couleur ou du nom court de couleur. |

## Auteur

Allan CORNET
