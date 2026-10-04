# uitab

Crée un onglet.

## 📝 Syntaxe

- h = uitab()
- h = uitab(parent)
- h = uitab(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - conteneur parent (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
- propertyName, propertyValue - paires nom-valeur.

## 📤 Argument de sortie

- h - objet conteneur.

## 📄 Description

<b>t = uitab</b> crée un onglet dans un groupe d'onglets et retourne l'objet Tab. Si le parent fourni n'est pas un TabGroup, un uitabgroup implicite est créé. Propriétés principales : <b>Title</b>, <b>BackgroundColor</b>, <b>ForegroundColor</b>, <b>Scrollable</b>. La géométrie de l'onglet est gérée par le TabGroup parent (<b>Position</b> en lecture seule).

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Tabs', 'Position', [100 100 420 260]);
tg = uitabgroup(f, 'Position', [55 40 310 180]);
t = uitab(tg, 'Title', 'Data');
uitab(tg, 'Title', 'Options');
uibutton(t, 'Text', 'Apply', 'Position', [25 45 100 28]);
drawnow();
```

<img src="uitab_example.svg" align="middle"/>
uitab

```matlab

f = uifigure();
tg = uitabgroup(f);
t = uitab(tg, 'Title', 'Réglages');
b = uibutton(t, 'Text', 'Appliquer', 'Position', [20 20 100 22]);

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
