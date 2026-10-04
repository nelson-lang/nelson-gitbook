# uiswitch

Crée un interrupteur (slider, rocker, toggle).

## 📝 Syntaxe

- h = uiswitch()
- h = uiswitch(parent)
- h = uiswitch(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Argument de sortie

- h - UI component object.

## 📄 Description

<b>sw = uiswitch(parent, style)</b> crée un interrupteur à deux états : styles <b>'slider'</b> (défaut), <b>'rocker'</b>, <b>'toggle'</b>. <b>Items</b> contient les deux libellés ; <b>Value</b>/<b>ValueIndex</b>/<b>ItemsData</b> suivent les règles habituelles ; <b>ValueChangedFcn</b> signale les changements.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Switches', 'Position', [100 100 520 300]);
sw = uiswitch(f, 'Position', [120 135 90 32]);
sw.Value = 'On';
rsw = uiswitch(f, 'rocker');
rsw.Position = [300 90 48 100];
rsw.Value = 'On';
drawnow();
```

<img src="uiswitch_example.svg" align="middle"/>
uiswitch

```matlab

f = uifigure();
sw = uiswitch(f, 'Items', {'Stop', 'Go'});
sw.Value = 'Go';

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
