# plot

Tracé linéaire 2D.

## Syntaxe

- plot(Y)
- plot(X1, Y1, ...)
- plot(X1, Y1, LineSpec, ...)
- plot(..., propertyName, propertyValue, ...)
- plot(ax, ...)
- go = plot(...)

## Argument d'entrée

- X1 - Coordonnées x : vecteur ou matrice.
- Y1 - Coordonnées y : vecteur ou matrice.
- LineSpec - Style de ligne, marqueur et/ou couleur : vecteur de caractères ou chaîne scalaire.
- ax - Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.
- propertyName - Chaîne scalaire ou vecteur ligne de caractères. Voir l'aide de 'line' pour la liste des propriétés.
- propertyValue - Une valeur.

## Argument de sortie

- go - Objet graphique : type ligne.

## Description

<p>
            plot(Y) trace les colonnes de Y en fonction de leur indice. </p>

<p>
            plot(X, Y) trace la courbe définie par la paire X et Y. </p>

<p>
            go = plot(...) retourne un vecteur colonne d'objets graphiques de type ligne. </p>

<p></p>

<p>
            LineSpec est une chaîne utilisée pour modifier les caractéristiques de la ligne
            et se compose de trois parties optionnelles dans n'importe quel ordre : </p>

<p></p>

<p>Le SymbolSpec spécifie le symbole à dessiner à chaque point de données :</p>

| Symbole | Description                    |
| ------- | ------------------------------ |
| 'o'     | Symbole cercle                 |
| 'x'     | Symbole croix                  |
| '+'     | Symbole plus                   |
| '\*'    | Symbole astérisque             |
| '.'     | Symbole point                  |
| 's'     | Symbole carré                  |
| 'd'     | Symbole losange                |
| 'v'     | Triangle pointe vers le bas    |
| '^'     | Triangle pointe vers le haut   |
| '<'     | Triangle pointe vers la droite |
| '>'     | Triangle pointe vers la gauche |

<p></p>

<p>Le LineStyleSpec spécifie le style de ligne à utiliser pour chaque série de données :</p>

| Style | Description         |
| ----- | ------------------- |
| '-'   | Ligne continue      |
| '--'  | Ligne pointillée    |
| '-.'  | Ligne tiret-point   |
| ':'   | Ligne en pointillés |

<p></p>

<p>Le ColorSpec spécifie la couleur de ligne à utiliser pour chaque série de données :</p>

| Couleur | Description |
| ------- | ----------- |
| 'k'     | Noir        |
| 'y'     | Jaune       |
| 'm'     | Magenta     |
| 'c'     | Cyan        |
| 'r'     | Rouge       |
| 'b'     | Bleu        |
| 'g'     | Vert        |

<p></p>

<p>Voir line pour plus d'informations sur les propriétés.</p>

## Exemples

Default abscissae using indices:

```matlab
f = figure()
plot(sin(0:0.1:2*pi))
```

<img src="plot_y.svg" align="middle"/>
Using explicit abscissae:

```matlab
f = figure()
x = [0:0.1:2*pi]';
plot(x, sin(x))
```

<img src="plot_xy.svg" align="middle"/>
Multiple curves with shared abscissae:

```matlab
f = figure()
x = [0:0.1:2*pi]';
plot(x, [cos(x), cos(2*x), cos(3*x)])
```

<img src="plot_multiple.svg" align="middle"/>
Color and Size of Markers:

```matlab
f = figure();
x = -pi:pi/10:pi;
y = tan(sin(x)) - sin(tan(x));
plot(x ,y, '--rs','LineWidth', 2, 'MarkerEdgeColor','k', 'MarkerFaceColor','g', 'MarkerSize', 11)
```

<img src="plot_markers.svg" align="middle"/>
Adding Title and Axis Labels:

```matlab
f = figure();
x = linspace(0, 10, 150);
y = sin(5*x);
plot(x,y,'Color',[0,0.7,0.9])
title(_('2-D Line Plot'))
xlabel('x')
ylabel('sin(5x)')
```

<img src="plot_title.svg" align="middle"/>

## Voir aussi

[line](../graphics/line.md), [plot3](../graphics/plot3.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
