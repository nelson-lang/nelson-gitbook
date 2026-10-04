# hsv

Tableau de colormap teinte-saturation-valeur.

## 📝 Syntaxe

- c = hsv
- c = hsv(m)

## 📥 Argument d'entrée

- m - une valeur entiere scalaire : Nombre de couleurs (256 par defaut).

## 📤 Argument de sortie

- c - Tableau de colormap teinte-saturation-valeur.

## 📄 Description

<b>hsv</b> retourne une colormap qui fait varier la teinte autour du cercle des couleurs.

## 💡 Exemple

```matlab
f = figure();
surf(peaks);
colormap('hsv');
```

<img src="hsv.svg" align="middle"/>

## 🔗 Voir aussi

[colormap](../../../../graphics/3_labels_styling/2_color_styling/colormaps/colormap.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
