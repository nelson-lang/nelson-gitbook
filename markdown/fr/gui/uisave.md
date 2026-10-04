# uisave

Enregistre des variables dans un fichier choisi depuis une boite de dialogue.

## 📝 Syntaxe

- uisave
- uisave(variables)
- uisave(variables, file)

## 📥 Argument d'entrée

- variables - Variable name, string array, or cell array of variable names. If omitted, the workspace is saved.

## 📄 Description

uisave asks for a destination file and saves variables from the caller workspace using the existing save behavior.

## 💡 Exemples

Apercu d une boite d enregistrement de variables.

```matlab
f = dialog('Name', 'Save Variables', 'WindowStyle', 'normal', 'Position', [100 100 400 220]);
uicontrol(f, 'Style', 'text', 'String', 'Variables:', 'Position', [30 156 120 22]);
uicontrol(f, 'Style', 'listbox', 'String', {'x', 'y', 'results'}, 'Value', 1, 'Position', [30 70 250 82]);
uicontrol(f, 'Style', 'pushbutton', 'String', 'Save', 'Position', [210 28 70 24]);
uicontrol(f, 'Style', 'pushbutton', 'String', 'Cancel', 'Position', [292 28 70 24]);
```

<img src="uisave_example.svg" align="middle"/>
Save several named variables.

```matlab
x = 1:5;
y = x .^ 2;
uisave({'x', 'y'}, 'series.nh5')
```

## 🔗 Voir aussi

[uiopen](../gui/uiopen.md), [uiputfile](../gui/uiputfile.md).

## 🕔 Historique

| Version | 📄 Description                         |
| ------- | -------------------------------------- |
| 2.0.0   | version aide API dialogue mise a jour. |

<!--
## 👤 Auteur

Allan CORNET
-->
