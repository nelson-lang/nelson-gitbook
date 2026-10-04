# uiknob

Crée un bouton rotatif (knob), continu ou discret.

## 📝 Syntaxe

- h = uiknob()
- h = uiknob(parent)
- h = uiknob(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Argument de sortie

- h - UI component object.

## 📄 Description

<b>kb = uiknob</b> crée un bouton rotatif continu (<b>Value</b>/<b>Limits</b>/graduations/<b>ValueChangingFcn</b>) ; <b>uiknob(parent, 'discrete')</b> crée un bouton rotatif discret basé sur <b>Items</b>/<b>ItemsData</b>/<b>ValueIndex</b>.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Knobs', 'Position', [100 100 620 360]);
kb = uiknob(f);
kb.Position = [70 90 170 170];
kb.Value = 55;
dk = uiknob(f, 'discrete');
dk.Position = [310 70 260 220];
dk.Value = 'Medium';
drawnow();
```

<img src="uiknob_example.svg" align="middle"/>
uiknob

```matlab

f = uifigure();
kb = uiknob(f, 'Value', 30);
dk = uiknob(f, 'discrete', 'Items', {'Bas', 'Haut'});

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
