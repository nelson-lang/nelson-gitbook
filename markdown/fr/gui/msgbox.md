# msgbox

Crée une boîte de dialogue de message.

## Syntaxe

- h = msgbox(message)
- h = msgbox(message, mode)
- h = msgbox(message, title)
- h = msgbox(message, title, mode)
- h = msgbox(message, title, icon)
- h = msgbox(message, title, icon, mode)

## Argument d'entrée

- message - a string or a cell of string: the message to display.
- title - a string : titre de la boîte de dialogue.
- icon - a string: 'none', 'error', 'help', 'warn' or 'question'.
- mode - a string: 'modal', 'on' or 'nonmodal'.

## Argument de sortie

- h - a QObject handle.

## Description

<p>
            msgbox creates an message dialog box.</p>

<p>msgbox crée une boîte de dialogue de message.</p>

<p>h = msgbox(message, title, 'on') indique si une boîte de dialogue existante portant le même nom doit être remplacée.</p>

## Exemples

```matlab
h = msgbox('help string')
```

```matlab
h = msgbox('help string', 'dialog title')
```

```matlab
h = msgbox('help string', 'dialog title')
h = msgbox('help string', 'dialog title', 'on')
```

## Voir aussi

[helpdlg](../gui/helpdlg.md), [errordlg](../gui/errordlg.md), [questdlg](../gui/questdlg.md), [warndlg](../gui/warndlg.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
