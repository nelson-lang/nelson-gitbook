# stream3

Calculer les sommets de lignes de courant 3-D depuis un champ vectoriel.

## 📝 Syntaxe

- vertices = stream3(U, V, W, startx, starty, startz)
- vertices = stream3(X, Y, Z, U, V, W, startx, starty, startz)
- vertices = stream3(..., options)

## 📄 Description


<b>stream3</b> suit un champ vectoriel 3-D depuis chaque point de depart et rend les sommets par lesquels il est passe. Rien n'est trace : passer le resultat a <b>streamline</b> pour le voir. 

Le resultat est un tableau de cellules avec une entree par point de depart, chacune un tableau N-by-3 de coordonnees <b>[x, y, z]</b> dont la premiere ligne est le point de depart lui-meme. Un point de depart hors du champ donne une entree vide ; un point de depart que le champ ne deplace pas garde son unique sommet. 

Sans <b>X</b>, <b>Y</b> ni <b>Z</b> le champ est indexe a partir de 1. 

L'entree optionnelle <b>options</b> vaut <b>[stepsize]</b> ou <b>[stepsize, maxvert]</b>. <b>stepsize</b> se compte en cellules de grille et vaut 0.1 par defaut. <b>maxvert</b> est le nombre maximal de sommets a produire, point de depart compris, et vaut 500 par defaut.

## 💡 Exemple

Tracer une spirale ascendante dans un champ tournant.

```matlab
[x, y, z] = meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2);
vertices = stream3(x, y, z, -y, x, 0.2 * ones(size(x)), 1, 0, -2);
streamline(vertices);
```
<img src="stream3_1.svg" align="middle"/>


## 🔗 Voir aussi

[stream2](../../../graphics/1_plots/5_vector_fields/stream2.md), [streamline](../../../graphics/1_plots/5_vector_fields/streamline.md), [coneplot](../../../graphics/1_plots/5_vector_fields/coneplot.md).