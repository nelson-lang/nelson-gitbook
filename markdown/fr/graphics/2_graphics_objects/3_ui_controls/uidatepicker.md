# uidatepicker

Crée un sélecteur de date.

## 📝 Syntaxe

- h = uidatepicker()
- h = uidatepicker(parent)
- h = uidatepicker(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Argument de sortie

- h - UI component object.

## 📄 Description


<b>d = uidatepicker</b> crée un sélecteur de date dont la <b>Value</b> est un datetime scalaire (NaT si vide). Propriétés : <b>DisplayFormat</b> (LDML), <b>Limits</b>, <b>DisabledDates</b>, <b>DisabledDaysOfWeek</b>, <b>Editable</b>, <b>ValueChangedFcn</b>.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Date picker', 'Position', [100 100 420 260]);
dp = uidatepicker(f, 'Position', [120 115 180 24]);
dp.Value = datetime(2026, 7, 19);
drawnow();
```
<img src="uidatepicker_example.svg" align="middle"/>
uidatepicker

```matlab

f = uifigure();
d = uidatepicker(f, 'Value', datetime(2026, 7, 18));

```


## 🔗 Voir aussi

[uifigure](../../../gui/uifigure.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
