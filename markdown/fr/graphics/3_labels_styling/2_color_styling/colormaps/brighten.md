# brighten

Éclaircit ou assombrit une palette de couleurs.

## 📝 Syntaxe

- brighten(beta)
- brighten(ax, beta)
- newmap = brighten(beta)
- newmap = brighten(map, beta)

## 📥 Argument d'entrée

- beta - Scalaire dans l'intervalle (-1, 1). Positif éclaircit, négatif assombrit.
- map - Palette de couleurs, matrice M-par-3 de valeurs RVB dans [0, 1].
- ax - Axes ou figure cible dont la palette est modifiée.

## 📤 Argument de sortie

- newmap - Palette éclaircie.

## 📄 Description


<b>brighten</b> augmente (<b>beta</b> > 0) ou diminue (<b>beta</b> < 0) la luminosité d'une palette de couleurs. Sans argument de sortie, elle remplace la palette de la figure courante (ou de <b>ax</b>) ; avec un argument de sortie, elle renvoie la palette modifiée. Lorsque <b>beta</b> tend vers 1 les couleurs tendent vers le blanc, et vers -1 vers le noir.

## Fonction(s) utilisée(s)

colormap

## 💡 Exemple



```matlab
f = figure();
surf(peaks());
colormap(jet());
brighten(0.5);
```


## 🔗 Voir aussi

[colormap](../../../../graphics/3_labels_styling/2_color_styling/colormaps/colormap.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
