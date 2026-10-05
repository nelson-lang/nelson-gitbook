# rlim

Definit ou retourne les limites radiales des axes polaires.

## 📝 Syntaxe

- lims = rlim()
- rlim([rmin, rmax])
- rlim('auto')
- rlim('manual')
- m = rlim('mode')
- rlim(ax, ...)

## 📥 Argument d'entrée

- [rmin, rmax] - Vecteur a deux elements. La seconde valeur doit etre superieure a la premiere.
- 'auto' - Active la selection automatique des limites radiales a partir des donnees tracees.
- 'manual' - Conserve les limites radiales courantes jusqu'a modification explicite.
- 'mode' - Retourne le mode courant des limites radiales.
- ax - Axes polaire cible.

## 📤 Argument de sortie

- lims - Vecteur a deux elements : [rmin, rmax].
- m - 'auto' ou 'manual'.

## 📄 Description


<b>rlim</b> retourne ou definit les limites radiales de l'axes polaire courant. 

La definition de limites numeriques passe le mode radial a <b>manual</b>. Le mode <b>auto</b> recalcule les limites lors du rafraichissement de l'axes polaire.

## 💡 Exemple

Definir les limites radiales.

```matlab

theta = linspace(0, 2*pi, 100);
polarplot(theta, 2 + sin(theta));
rlim([0 3]);
currentLimits = rlim()
currentMode = rlim('mode')

```


## 🔗 Voir aussi

[polarplot](../../../graphics/1_plots/2_polar_plots/polarplot.md), [polaraxes](../../../graphics/1_plots/2_polar_plots/polaraxes.md), [rticks](../../../graphics/3_labels_styling/1_axes_appearance/rticks.md), [thetalim](../../../graphics/3_labels_styling/1_axes_appearance/thetalim.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
