# uibuttongroup

Crée un groupe de boutons.

## 📝 Syntaxe

- h = uibuttongroup()
- h = uibuttongroup(parent)
- h = uibuttongroup(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - conteneur parent (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
- propertyName, propertyValue - paires nom-valeur.

## 📤 Argument de sortie

- h - objet conteneur.

## 📄 Description

<b>bg = uibuttongroup</b> crée un conteneur gérant la sélection exclusive de boutons radio et boutons bascule. Propriétés principales : <b>Title</b>, <b>TitlePosition</b>, <b>SelectedObject</b>, <b>Buttons</b> (lecture seule), <b>SelectionChangedFcn</b> (event avec <b>OldValue</b> et <b>NewValue</b>), plus les propriétés de bordure et police du panneau.

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Button group', 'Position', [100 100 420 260]);
bg = uibuttongroup(f, 'Position', [90 55 240 150]);
r1 = uiradiobutton(bg, 'Text', 'Low', 'Position', [20 95 120 22]);
r2 = uiradiobutton(bg, 'Text', 'High', 'Position', [20 55 120 22]);
r2.Value = true;
drawnow();
```

<img src="uibuttongroup_example.svg" align="middle"/>
uibuttongroup

```matlab

f = uifigure();
bg = uibuttongroup(f, 'Title', 'Choix', 'Position', [20 20 260 210]);

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
