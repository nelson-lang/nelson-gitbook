# dialog

Cree une fenetre de dialogue de type figure.

## 📝 Syntaxe

- f = dialog
- f = dialog(Name, Value)

## 📥 Argument d'entrée

- Name, Value - Paires nom-valeur de proprietes de figure. dialog applique MenuBar = 'none', ToolBar = 'auto', NumberTitle = 'off', Resize = 'off' et WindowStyle = 'modal' avant les proprietes fournies. Les proprietes courantes incluent 'Name', 'Position', 'Visible', 'WindowStyle', 'Resize' et 'CloseRequestFcn'.

## 📤 Argument de sortie

- f - Graphics figure handle.

## 📄 Description


dialog creates a graphics figure configured for dialog content. The returned handle can be used with get, set, close, delete, and waitfor.

## 💡 Exemples

Creer une boite de dialogue avec des controles.

```matlab
f = dialog('Name', 'Settings', 'WindowStyle', 'normal', 'Position', [100 100 300 150]);
uicontrol(f, 'Style', 'text', 'String', 'Dialog content', 'Position', [30 82 150 22]);
uicontrol(f, 'Style', 'pushbutton', 'String', 'Close', 'Position', [200 30 70 24]);
```
<img src="dialog_example.svg" align="middle"/>
Create a dialog with a title and close it.

```matlab
f = dialog('Name', 'Progress', 'Visible', 'off', 'Position', [300 300 240 100]);
close(f)
```


## 🔗 Voir aussi

[msgbox](../gui/msgbox.md), [waitbar](../gui/waitbar.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version aide API dialogue mise a jour. |

<!--
## 👤 Auteur

Allan CORNET
-->
