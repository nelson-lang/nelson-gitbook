# yticks

Definir ou obtenir les graduations de l'axe des y.

## 📝 Syntaxe

- ticks = yticks()
- yticks(values)
- yticks('auto')
- yticks('manual')
- m = yticks('mode')
- yticks(ax, ...)

## 📥 Argument d'entrée

- values - Vecteur numerique des graduations de l'axe des y.
- 'auto' - Active la selection automatique des graduations de l'axe des y.
- 'manual' - Fige les graduations courantes de l'axe des y.
- 'mode' - Retourne le mode des graduations de l'axe des y.
- ax - Axes cibles. Par defaut, les axes courants.

## 📤 Argument de sortie

- ticks - Vecteur ligne numerique des graduations de l'axe des y.
- m - 'auto' ou 'manual'.

## 📄 Description

<b>yticks</b> obtient ou definit les graduations de l'axe des y des axes courants.

Specifier des graduations bascule le mode des graduations de l'axe des y sur <b>manual</b>.

## 💡 Exemple

Definir les graduations de l'axe des y.

```matlab

x = linspace(0, 10, 50);
plot(x, sin(x));
yticks(-1:0.5:1);
ticks = yticks()

```

## 🔗 Voir aussi

[yticklabels](../../../graphics/3_labels_styling/1_axes_appearance/yticklabels.md), [ytickangle](../../../graphics/3_labels_styling/1_axes_appearance/ytickangle.md), [ylim](../../../graphics/3_labels_styling/1_axes_appearance/ylim.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
