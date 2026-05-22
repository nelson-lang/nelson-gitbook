# tilerowcol

Obtenir les indices ligne et colonne à partir d'un numéro de tuile ou d'un objet graphique.

## 📝 Syntaxe

- [row, col] = tilerowcol(t, tilenum)
- [row, col] = tilerowcol(obj)

## 📥 Argument d'entrée

- t - Objet TiledChartLayout.
- tilenum - Numéro de tuile : entier positif ou tableau.
- obj - Objet graphique (axes) créé par nexttile.

## 📤 Argument de sortie

- row - Indice de ligne : entier positif, ou NaN pour les tuiles invalides ou de bord.
- col - Indice de colonne : entier positif, ou NaN pour les tuiles invalides ou de bord.

## 📄 Description

<b>tilerowcol(t, tilenum)</b> retourne les indices de ligne et de colonne pour le numéro de tuile donné dans la disposition TiledChartLayout t.

<b>tilerowcol(obj)</b> retourne la ligne et la colonne de la tuile occupée par l'objet axes obj.

Retourne NaN pour les numéros de tuile hors limites ou pour les axes de tuile de bord.

## 💡 Exemple

Obtenir la ligne et la colonne à partir du numéro de tuile

```matlab
t = tiledlayout(2, 3);
[row, col] = tilerowcol(t, 4)

```

## 🔗 Voir aussi

[tiledlayout](tiledlayout.md), [nexttile](nexttile.md), [tilenum](tilenum.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
