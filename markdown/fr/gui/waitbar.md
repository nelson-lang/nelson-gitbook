# waitbar

Cree ou met a jour une figure de progression.

## 📝 Syntaxe

- h = waitbar(x)
- h = waitbar(x, message)
- h = waitbar(x, h)
- h = waitbar(x, h, message)

## 📥 Argument d'entrée

- x - Progress value. Values below 0 are clipped to 0; values above 1 are clipped to 1.

## 📤 Argument de sortie

- h - Graphics figure handle. The progress value is stored in UserData.

## 📄 Description


waitbar creates a progress figure or updates an existing one. The handle supports set, get, close, delete, and waitfor.

## 💡 Exemples

Creer et mettre a jour une barre d attente.

```matlab
h = waitbar(0.25, 'Starting');
pause(0.1);
h = waitbar(0.75, h, 'Almost done');
```
<img src="waitbar_example.svg" align="middle"/>
Update a wait bar inside a loop.

```matlab
h = waitbar(0, 'Processing');
for k = 1:3
  h = waitbar(k / 3, h, 'Processing');
end
close(h)
```


## 🔗 Voir aussi

[dialog](../gui/dialog.md), [uiprogressdlg](../gui/uiprogressdlg.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version aide API dialogue mise a jour. |

<!--
## 👤 Auteur

Allan CORNET
-->
