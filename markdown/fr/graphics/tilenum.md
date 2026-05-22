# tilenum

Obtenir le numéro de tuile à partir d'indices ligne-colonne ou d'un objet graphique.

## 📝 Syntaxe

- n = tilenum(t, row, col)
- n = tilenum(obj)

## 📥 Argument d'entrée

- t - Objet TiledChartLayout.
- row - Indice de ligne : entier positif ou tableau.
- col - Indice de colonne : entier positif ou tableau.
- obj - Objet graphique (axes) créé par nexttile.

## 📤 Argument de sortie

- n - Numéro de tuile : entier positif, ou NaN pour les indices hors limites ou les tuiles de bord.

## 📄 Description

<b>tilenum(t, row, col)</b> retourne le numéro de tuile pour la ligne et la colonne données dans la disposition TiledChartLayout t.

<b>tilenum(obj)</b> retourne le numéro de tuile occupée par l'objet axes obj.

Retourne NaN pour les indices hors limites ou pour les axes de tuile de bord.

## 💡 Exemple

Obtenir le numéro de tuile par ligne et colonne

```matlab
t = tiledlayout(2, 3);
n = tilenum(t, 1, 2)

```

## 🔗 Voir aussi

[tiledlayout](tiledlayout.md), [nexttile](nexttile.md), [tilerowcol](tilerowcol.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
