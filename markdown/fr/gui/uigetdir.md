# uigetdir

Ouvre une boite de dialogue de selection de dossier.

## 📝 Syntaxe

- path = uigetdir
- path = uigetdir(startPath)
- path = uigetdir(startPath, title)

## 📥 Argument d'entrée

- startPath - Initial directory. If the path is not a directory, the current folder is used.

## 📤 Argument de sortie

- path - Selected directory, or 0 when canceled.

## 📄 Description


uigetdir lets the user choose a directory.

## 💡 Exemples

Apercu d une boite de selection de dossier.

```matlab
f = dialog('Name', 'Select a folder', 'WindowStyle', 'normal', 'Position', [100 100 420 250]);
uicontrol(f, 'Style', 'edit', 'String', pwd(), 'Position', [28 186 350 24]);
uicontrol(f, 'Style', 'listbox', 'String', {'src', 'temp', 'exports'}, 'Value', 2, 'Position', [28 70 350 105]);
uicontrol(f, 'Style', 'pushbutton', 'String', 'Select', 'Position', [220 28 70 24]);
uicontrol(f, 'Style', 'pushbutton', 'String', 'Cancel', 'Position', [304 28 70 24]);
```
<img src="uigetdir_example.svg" align="middle"/>
Start directory selection in the temporary folder.

```matlab
path = uigetdir(tempdir(), 'Select temporary folder');
if ~isequal(path, 0), disp(path); end
```


## 🔗 Voir aussi

[uigetfile](../gui/uigetfile.md), [uiputfile](../gui/uiputfile.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version aide API dialogue mise a jour. |

<!--
## 👤 Auteur

Allan CORNET
-->
