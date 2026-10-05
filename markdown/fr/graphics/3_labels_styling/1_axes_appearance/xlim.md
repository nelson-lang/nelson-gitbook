# xlim

définir ou obtenir les limites de l'axe des x.

## 📝 Syntaxe

- lims = xlim()
- xlim([xmin, xmax])
- xlim('auto')
- xlim('manual')
- m = xlim('mode')
- method = xlim('method')
- xlim('tight')
- xlim('padded')
- xlim('tickaligned')
- xlim(ax, ...)

## 📥 Argument d'entrée

- [xmin, xmax] - coordonnées x : vecteur ou matrice.
- 'auto' - activer la sélection automatique des limites.
- 'manual' - figer les limites de l'axe des x à leur valeur actuelle.
- 'mode' - retourne le mode actuel des limites de l'axe des x.
- 'method' - retourne la methode de selection automatique des limites de l'axe des x.
- 'tight', 'padded' ou 'tickaligned' - definit la methode de selection automatique des limites de l'axe des x.
- ax - une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.

## 📤 Argument de sortie

- lims - vecteur à deux éléments : [xmin, xmax]
- m - 'auto' ou 'manual'.
- method - 'tight', 'padded' ou 'tickaligned'.

## 📄 Description


<b>xlim</b> obtient ou définit les limites de l'axe des x pour le tracé actuel.

## 💡 Exemple



```matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = xlim()
m = xlim('mode')

```


## 🔗 Voir aussi

[axes](../../../graphics/2_graphics_objects/1_object_management/axes.md), [axis](../../../graphics/3_labels_styling/1_axes_appearance/axis.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
