# ylim

définir ou obtenir les limites de l'axe des y.

## 📝 Syntaxe

- lims = ylim()
- ylim([ymin, ymax])
- ylim('auto')
- ylim('manual')
- m = ylim('mode')
- method = ylim('method')
- ylim('tight')
- ylim('padded')
- ylim('tickaligned')
- ylim(ax, ...)

## 📥 Argument d'entrée

- [ymin, ymax] - coordonnées y : vecteur ou matrice.
- 'auto' - activer la sélection automatique des limites.
- 'manual' - figer les limites de l'axe des y à leur valeur actuelle.
- 'mode' - retourne le mode actuel des limites de l'axe des y.
- 'method' - retourne la methode de selection automatique des limites de l'axe des y.
- 'tight', 'padded' ou 'tickaligned' - definit la methode de selection automatique des limites de l'axe des y.
- ax - une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.

## 📤 Argument de sortie

- lims - vecteur à deux éléments : [ymin, ymax]
- m - 'auto' ou 'manual'.
- method - 'tight', 'padded' ou 'tickaligned'.

## 📄 Description


<b>ylim</b> obtient ou définit les limites de l'axe des y pour le tracé actuel.

## 💡 Exemple



```matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = ylim()
m = ylim('mode')

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
