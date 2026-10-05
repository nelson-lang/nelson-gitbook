# uislider

Crée un curseur (slider) ou un curseur de plage.

## 📝 Syntaxe

- h = uislider()
- h = uislider(parent)
- h = uislider(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Argument de sortie

- h - UI component object.

## 📄 Description


<b>sld = uislider</b> crée un curseur ; <b>uislider(parent, 'range')</b> crée un curseur de plage dont la <b>Value</b> est un vecteur à deux éléments. Propriétés : <b>Value</b>, <b>Limits</b>, <b>Orientation</b>, <b>MajorTicks</b>/<b>MinorTicks</b>/<b>MajorTickLabels</b> avec modes auto/manuel, <b>Step</b>/<b>StepMode</b>, <b>ValueChangedFcn</b>, <b>ValueChangingFcn</b>.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Slider', 'Position', [100 100 520 300]);
sld = uislider(f, 'Position', [90 165 300 30]);
sld.Value = 42;
rs = uislider(f, 'range');
rs.Position = [90 95 300 30];
rs.Value = [20 70];
drawnow();
```
<img src="uislider_example.svg" align="middle"/>
uislider

```matlab

f = uifigure();
sld = uislider(f, 'Limits', [0 10], 'Value', 4);
rs = uislider(f, 'range', 'Value', [20 60]);

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
