# zlabel

Étiquette de l'axe des z.

## 📝 Syntaxe

- zlabel(text)
- zlabel(ax, text)
- zlabel(..., propertyName, propertyValue)
- go = zlabel(...)

## 📥 Argument d'entrée

- text - Texte à afficher : vecteur de caractères, scalaire de chaîne, tableau de chaînes ou tableau de cellules.
- ax - une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.
- propertyName - une chaîne scalaire ou un vecteur de caractères en ligne.
- propertyValue - une valeur.

## 📤 Argument de sortie

- go - un objet graphique : type texte.

## 📄 Description

<b>zlabel('text')</b> étiquette l'axe des z des axes actuels.

## 💡 Exemple

```matlab
f  = figure();
t = 0:pi/50:10*pi;
L = plot3(sin(t), cos(t), t);
axis square
zlabel('Étiquette de l’axe Z - Unicode ドラゴンボールZ(ゼット)')
```

<img src="zlabel.svg" align="middle"/>

## 🔗 Voir aussi

[text](../graphics/text.md), [title](../graphics/title.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
