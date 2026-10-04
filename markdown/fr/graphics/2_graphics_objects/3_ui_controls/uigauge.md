# uigauge

Crée une jauge (circular, linear, ninetydegree, semicircular).

## 📝 Syntaxe

- h = uigauge()
- h = uigauge(parent)
- h = uigauge(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - parent container.
- propertyName, propertyValue - name-value pairs.

## 📤 Argument de sortie

- h - UI component object.

## 📄 Description

<b>g = uigauge(parent, style)</b> crée une jauge d'affichage : styles <b>'circular'</b> (défaut), <b>'linear'</b>, <b>'ninetydegree'</b>, <b>'semicircular'</b>. Propriétés : <b>Value</b>, <b>Limits</b>, <b>ScaleColors</b>/<b>ScaleColorLimits</b>, graduations, <b>Orientation</b> ou <b>ScaleDirection</b> selon le style.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Gauges', 'Position', [100 100 520 320]);
g = uigauge(f);
g.Position = [90 70 180 180];
g.Value = 75;
lg = uigauge(f, 'linear');
lg.Position = [310 145 150 40];
lg.Value = 45;
drawnow();
```

<img src="uigauge_example.svg" align="middle"/>
uigauge

```matlab

f = uifigure();
g = uigauge(f, 'Value', 75);
lg = uigauge(f, 'linear', 'Orientation', 'vertical');

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
