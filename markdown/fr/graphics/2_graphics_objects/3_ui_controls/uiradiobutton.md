# uiradiobutton

Crée un bouton radio dans un groupe de boutons.

## 📝 Syntaxe

- h = uiradiobutton()
- h = uiradiobutton(parent)
- h = uiradiobutton(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - conteneur parent.
- propertyName, propertyValue - paires nom-valeur.

## 📤 Argument de sortie

- h - objet composant UI.

## 📄 Description

<b>rb = uiradiobutton(bg)</b> crée un bouton radio dans un uibuttongroup. Le premier bouton ajouté est sélectionné. La sélection est exclusive ; les changements sont signalés par le <b>SelectionChangedFcn</b> du groupe. Propriétés : <b>Value</b> (logique), <b>Text</b>, <b>WordWrap</b>, polices.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Radio buttons', 'Position', [100 100 420 260]);
bg = uibuttongroup(f, 'Position', [95 55 230 150]);
r1 = uiradiobutton(bg, 'Text', 'Metric', 'Position', [25 95 120 22]);
r2 = uiradiobutton(bg, 'Text', 'Imperial', 'Position', [25 55 120 22]);
r1.Value = true;
drawnow();
```

<img src="uiradiobutton_example.svg" align="middle"/>
uiradiobutton

```matlab

f = uifigure();
bg = uibuttongroup(f, 'Title', 'Options');
rb1 = uiradiobutton(bg, 'Text', 'Premier');
rb2 = uiradiobutton(bg, 'Text', 'Second');
rb2.Value = true;

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
