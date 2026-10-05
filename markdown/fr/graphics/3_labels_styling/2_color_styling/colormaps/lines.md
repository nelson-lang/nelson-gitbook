# lines

Tableau de colormap base sur l'ordre des couleurs de lignes.

## 📝 Syntaxe

- c = lines
- c = lines(m)

## 📥 Argument d'entrée

- m - une valeur entiere scalaire : Nombre de couleurs (256 par defaut).

## 📤 Argument de sortie

- c - Tableau de colormap base sur l'ordre des couleurs de lignes.

## 📄 Description


<b>lines</b> retourne une colormap basee sur l'ordre de couleurs par defaut des axes.

## 💡 Exemple



```matlab
f = figure();
surf(peaks);
colormap('lines');
```
<img src="lines.svg" align="middle"/>


## 🔗 Voir aussi

[colormap](../../../../graphics/3_labels_styling/2_color_styling/colormaps/colormap.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
