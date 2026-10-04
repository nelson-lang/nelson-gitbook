# uilamp

Crée un témoin lumineux (lamp).

## 📝 Syntaxe

- h = uilamp()
- h = uilamp(parent)
- h = uilamp(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Argument de sortie

- h - UI component object.

## 📄 Description

<b>lmp = uilamp</b> crée un témoin circulaire d'affichage dont la <b>Color</b> reflète un état.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Lamp', 'Position', [100 100 420 260]);
lbl = uilabel(f, 'Text', 'Ready', 'Position', [150 120 80 24]);
lmp = uilamp(f, 'Position', [235 122 20 20]);
lmp.Color = 'green';
drawnow();
```

<img src="uilamp_example.svg" align="middle"/>
uilamp

```matlab

f = uifigure();
lmp = uilamp(f, 'Color', 'red');

```

## 🔗 Voir aussi

[uifigure](../../../gui/uifigure.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
