# xlim

définir ou obtenir les limites de l'axe des x.

## 📝 Syntaxe

- lims = xlim()
- xlim([xmin, xmax])
- xlim('auto')
- xlim('manual')
- m = xlim('mode')
- xlim(ax, ...)

## 📥 Argument d'entrée

- [xmin, xmax] - coordonnées x : vecteur ou matrice.
- 'auto' - activer la sélection automatique des limites.
- 'manual' - figer les limites de l'axe des x à leur valeur actuelle.
- 'mode' - retourne le mode actuel des limites de l'axe des x.
- ax - une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.

## 📤 Argument de sortie

- lims - vecteur à deux éléments : [xmin, xmax]
- m - 'auto' ou 'manual'.

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

[axes](../graphics/axes.md), [axis](../graphics/axis.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
