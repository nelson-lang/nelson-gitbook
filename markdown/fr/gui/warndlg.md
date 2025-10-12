# warndlg

Crée une boîte de dialogue d'avertissement.

## Syntaxe

- h = warndlg()
- h = warndlg(text_warning)
- h = warndlg(text_warning, title)
- h = warndlg(text_warning, title, 'on')

## Argument d'entrée

- text_warning - une chaîne ou un tableau de chaînes : le message d'avertissement.
- title - une chaîne : le titre de la boîte de dialogue.

## Argument de sortie

- h - un handle QObject.

## Description

<p>warndlg crée une boîte de dialogue d'avertissement.</p>

<p>h = warndlg(text_warning, title, 'on') spécifie si une boîte de dialogue existante portant le même nom doit être remplacée.</p>

## Exemples

```matlab
h = warndlg()
```

```matlab
h = warndlg('help string')
```

```matlab
h = warndlg('help string', 'dialog title')
```

```matlab
h = warndlg('help string', 'dialog title')
h = warndlg('help string', 'dialog title', 'on')
```

## Voir aussi

[helpdlg](../gui/helpdlg.md), [errordlg](../gui/errordlg.md), [questdlg](../gui/questdlg.md), [msgbox](../gui/msgbox.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
