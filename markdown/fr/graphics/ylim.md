# ylim

définir ou obtenir les limites de l'axe des y.

## 📝 Syntaxe

- lims = ylim()
- ylim([ymin, ymax])
- ylim('auto')
- ylim('manual')
- m = ylim('mode')
- ylim(ax, ...)

## 📥 Argument d'entrée

- [ymin, ymax] - coordonnées y : vecteur ou matrice.
- 'auto' - activer la sélection automatique des limites.
- 'manual' - figer les limites de l'axe des y à leur valeur actuelle.
- 'mode' - retourne le mode actuel des limites de l'axe des y.
- ax - une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.

## 📤 Argument de sortie

- lims - vecteur à deux éléments : [ymin, ymax]
- m - 'auto' ou 'manual'.

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

[axes](../graphics/axes.md), [axis](../graphics/axis.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
