# copygraphics

Copie un tracé vers le presse-papiers.

## 📝 Syntaxe

- copygraphics(fig)

## 📥 Argument d'entrée

- fig - objet figure.

## 📄 Description


<b>copygraphics</b> copie la figure dans le presse-papiers. 

Sur le bureau, l'image RGBA rendue est envoyée au presse-papiers natif par l'adaptateur de bureau optionnel. En mode web, le même rendu est encodé en PNG RGBA puis transmis par <b>clipboard.image</b> au navigateur. Cet accès exige un contexte sécurisé et peut demander une permission ou un geste utilisateur. Si la demande automatique est refusée, une action visible <b>Copy image</b> permet de recommencer l'opération.

## 💡 Exemple



```matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
copygraphics(gcf());

```


## 🔗 Voir aussi

[gcf](../graphics/2_graphics_objects/1_object_management/gcf.md), [saveas](../graphics_io/saveas.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | ajout du presse-papiers d'images dans le navigateur |

<!--
## 👤 Auteur

Allan CORNET
-->
