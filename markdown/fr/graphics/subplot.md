# subplot

Créer des axes en positions mosaïques.

## Syntaxe

- subplot(m, n, p)
- subplot('mnp')
- subplot('Position', pos)
- ax = subplot(...)

## Argument d'entrée

- m - Nombre de lignes de la grille : entier scalaire positif.
- n - Nombre de colonnes de la grille : entier scalaire positif.
- p - Position dans la grille pour les nouveaux axes : scalaire ou vecteur.
- pos - Position personnalisée pour les nouveaux axes : [gauche bas largeur hauteur].

## Argument de sortie

- ax - Un objet graphique : type axes.

## Description

<p>
            subplot(n, m, p) divise la figure courante en une grille à deux dimensions.</p>

<p>Chacune des cases peut contenir un graphique quelconque.</p>

## Exemples

```matlab
f = figure();
X = linspace(-pi, pi) * 2;
Y1 = cos(X) .* exp(-2 * X);
Y2 = cos(X * 2) .* exp(-2 * X);
Y3 = cos(X * 3) .* exp(-2 * X);
Y4 = cos(X * 4) .* exp(-2 * X);

subplot(4, 1, 1)
plot(X, Y1,'b');
subplot(4, 1, 2)
plot(X, Y2, 'r');
subplot(4, 1, 3);
plot(X, Y3, 'g');
subplot(4, 1, 4);
plot(X, Y4, 'k');
```

<img src="subplot_1.svg" align="middle"/>

```matlab
f = figure();
t = 0 : (2 * pi/100) : (2 * pi);
X = cos(t * 2) .* (2 + sin(t * 3) * 0.3);
Y = sin(t * 2) .* (2 + sin(t * 3) * 0.3);
Z = cos(t * 3) * 0.3;
subplot(2, 2, 1)
surf(peaks());
axis equal
view(3)
subplot(2, 2, 2);
plot(t, X);
subplot(2, 2, 3);
plot(t, Y);
subplot(2, 2, 4);
plot(t, Z);
```

<img src="subplot_2.svg" align="middle"/>

## Voir aussi

[plot](../graphics/plot.md), [axes](../graphics/axes.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
