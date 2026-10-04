# thetalim

Definit ou retourne les limites angulaires des axes polaires.

## 📝 Syntaxe

- lims = thetalim()
- thetalim([thetamin, thetamax])
- thetalim('auto')
- thetalim('manual')
- m = thetalim('mode')
- thetalim(ax, ...)

## 📥 Argument d'entrée

- [thetamin, thetamax] - Vecteur a deux elements de limites angulaires en degres. La seconde valeur doit etre superieure a la premiere.
- 'auto' - Utilise les limites angulaires automatiques, actuellement [0 360].
- 'manual' - Conserve les limites angulaires courantes.
- 'mode' - Retourne le mode des limites angulaires.
- ax - Axes polaire cible.

## 📤 Argument de sortie

- lims - Vecteur a deux elements de limites angulaires en degres.
- m - 'auto' ou 'manual'.

## 📄 Description

<b>thetalim</b> retourne ou definit les limites angulaires de l'axes polaire courant. Contrairement aux angles de donnees de <b>polarplot</b>, les limites angulaires sont exprimees en degres.

La definition de limites numeriques passe le mode des limites angulaires a <b>manual</b>.

## 💡 Exemple

Afficher seulement la moitie superieure d'un trace polaire.

```matlab

theta = linspace(0, pi, 100);
polarplot(theta, sin(theta));
thetalim([0 180]);
lims = thetalim()

```

## 🔗 Voir aussi

[thetaticks](../../../graphics/3_labels_styling/1_axes_appearance/thetaticks.md), [thetaticklabels](../../../graphics/3_labels_styling/1_axes_appearance/thetaticklabels.md), [rlim](../../../graphics/3_labels_styling/1_axes_appearance/rlim.md), [polarplot](../../../graphics/1_plots/2_polar_plots/polarplot.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
