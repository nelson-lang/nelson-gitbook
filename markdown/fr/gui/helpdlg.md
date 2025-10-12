# helpdlg

Crée une boîte de dialogue d'aide.

## Syntaxe

- h = helpdlg()
- h = helpdlg(text_help)
- h = helpdlg(text_help, title)
- h = helpdlg(text_help, title, 'on')

## Argument d'entrée

- text_help - a string or a cell of string: the help message.
- title - a string: the title of the dialog box.

## Argument de sortie

- h - a QObject handle.

## Description

<p>helpdlg crée une boîte de dialogue d'aide.</p>

<p>h = helpdlg(text_help, title, 'on') indique si une boîte de dialogue existante portant le même nom doit être remplacée.</p>

## Exemples

```matlab
h = helpdlg()
```

```matlab
h = helpdlg('help string')
```

```matlab
h = helpdlg('help string', 'dialog title')
```

```matlab
h = helpdlg('help string', 'dialog title')
h = helpdlg('help string', 'dialog title', 'on')
```

## Voir aussi

[warndlg](../gui/warndlg.md), [errordlg](../gui/errordlg.md), [questdlg](../gui/questdlg.md), [msgbox](../gui/msgbox.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
