# uifigure

Cree une figure pour des interfaces utilisateur.

## 📝 Syntaxe

- f = uifigure()
- f = uifigure(Name, Value)

## 📥 Argument d'entrée

- Name, Value - Paires nom-valeur de proprietes de figure. uifigure applique MenuBar = 'none', ToolBar = 'none', NumberTitle = 'off', Resize = 'on', WindowStyle = 'normal' et une taille par defaut de 560 par 420 pixels avant les proprietes fournies.

## 📤 Argument de sortie

- f - Handle graphique de figure.

## 📄 Description


uifigure cree une figure graphique configuree pour les boites de dialogue et controles d'interface. Le handle retourne peut etre utilise avec get, set, close, delete et comme parent des fonctions de dialogue UI. 

Les proprietes prises en charge sont les proprietes de figure disponibles dans Nelson, dont 'Name', 'Position', 'Visible', 'WindowStyle', 'Resize', 'Color', 'Tag' et les proprietes de callback.

## 💡 Exemples

Capture de figure UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Results', 'Position', [100 100 420 260]);
uilabel(f, 'Text', 'Result:', 'Position', [80 150 90 24]);
uibutton(f, 'Text', 'Run', 'Position', [80 95 100 30]);
uislider(f, 'Position', [210 110 150 3], 'Value', 55);
drawnow();
```
<img src="uifigure_example.svg" align="middle"/>
Creer une figure UI modale nommee.

```matlab
f = uifigure('Name', 'Results', 'WindowStyle', 'modal');
f.Name
close(f)
```


## 🔗 Voir aussi

[dialog](../gui/dialog.md), [uialert](../gui/uialert.md), [uiconfirm](../gui/uiconfirm.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Introduction de la figure UI. |

<!--
## 👤 Auteur

Allan CORNET
-->
