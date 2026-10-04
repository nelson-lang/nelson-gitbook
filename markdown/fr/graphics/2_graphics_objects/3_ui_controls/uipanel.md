# uipanel

Crée un panneau conteneur.

## 📝 Syntaxe

- h = uipanel()
- h = uipanel(parent)
- h = uipanel(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - conteneur parent (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
- propertyName, propertyValue - paires nom-valeur.

## 📤 Argument de sortie

- h - objet conteneur.

## 📄 Description

<b>p = uipanel</b> crée un panneau dans une nouvelle figure (uifigure). Un panneau regroupe des composants UI ; les enfants sont positionnés relativement au panneau. Propriétés principales : <b>Title</b>, <b>TitlePosition</b> ('lefttop', 'centertop', 'righttop'), <b>BackgroundColor</b>, <b>ForegroundColor</b>, <b>BorderType</b> ('line', 'none'), <b>BorderWidth</b>, <b>BorderColor</b>, <b>Position</b>, <b>Scrollable</b>, <b>AutoResizeChildren</b>, <b>SizeChangedFcn</b>.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Panel', 'Position', [100 100 420 260]);
p = uipanel(f, 'Title', 'Settings', 'Position', [80 45 260 170]);
uicheckbox(p, 'Text', 'Enabled', 'Value', true, 'Position', [25 95 120 24]);
uibutton(p, 'Text', 'Apply', 'Position', [25 45 100 28]);
drawnow();
```

<img src="uipanel_example.svg" align="middle"/>
uipanel

```matlab

f = uifigure();
p = uipanel(f, 'Title', 'Options', 'Position', [20 20 260 221]);
b = uibutton(p, 'Text', 'OK', 'Position', [20 20 100 22]);

```

## 🔗 Voir aussi

[uifigure](../../../gui/uifigure.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
