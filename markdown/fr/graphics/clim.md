# clim

Définit les limites de la palette de couleurs.

## 📝 Syntaxe

- clim(limits)
- clim('auto')
- clim('manual')
- clim(ax, ...)
- lims = clim()

## 📥 Argument d'entrée

- limits - Nouvelles limites : [cmin cmax].
- 'auto' - active la mise à jour automatique des limites lorsque les valeurs du tableau d'indexation de la palette changent.
- 'manual' - désactive la mise à jour automatique des limites.
- ax - Objet cible : objet axes graphique.

## 📤 Argument de sortie

- lims - [cmin cmax]

## 📄 Description

<b>clim</b> définit ou récupère les limites de la palette de couleurs.

## 💡 Exemples

```matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = X .^ 2 + Y .^ 2;
surf(Z);
limits = clim()

```

<img src="clim_1.svg" align="middle"/>

```matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = X.^2 + Y.^2;
surf(Z);
clim([25 75])
limits = clim()

```

<img src="clim_2.svg" align="middle"/>

## 🔗 Voir aussi

[colormap](../graphics/colormap.md), [colorbar](../graphics/colorbar.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
