# xticks

Definir ou obtenir les graduations de l'axe des x.

## 📝 Syntaxe

- ticks = xticks()
- xticks(values)
- xticks('auto')
- xticks('manual')
- m = xticks('mode')
- xticks(ax, ...)

## 📥 Argument d'entrée

- values - Vecteur numerique des graduations de l'axe des x.
- 'auto' - Active la selection automatique des graduations de l'axe des x.
- 'manual' - Fige les graduations courantes de l'axe des x.
- 'mode' - Retourne le mode des graduations de l'axe des x.
- ax - Axes cibles. Par defaut, les axes courants.

## 📤 Argument de sortie

- ticks - Vecteur ligne numerique des graduations de l'axe des x.
- m - 'auto' ou 'manual'.

## 📄 Description

<b>xticks</b> obtient ou definit les graduations de l'axe des x des axes courants.

Specifier des graduations bascule le mode des graduations de l'axe des x sur <b>manual</b>.

## 💡 Exemple

Definir les graduations de l'axe des x.

```matlab

x = linspace(0, 10, 50);
plot(x, sin(x));
xticks(0:2:10);
ticks = xticks()

```

## 🔗 Voir aussi

[xticklabels](../../../graphics/3_labels_styling/1_axes_appearance/xticklabels.md), [xtickangle](../../../graphics/3_labels_styling/1_axes_appearance/xtickangle.md), [xlim](../../../graphics/3_labels_styling/1_axes_appearance/xlim.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
