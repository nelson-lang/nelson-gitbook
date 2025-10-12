# errordlg

Crée une boîte de dialogue d'erreur.

## Syntaxe

- h = errordlg()
- h = errordlg(text_error)
- h = errordlg(text_error, title)
- h = errordlg(text_error, title, mode)

## Argument d'entrée

- text_error - a string ou cellule de chaînes : message d'erreur.
- title - a string : titre de la boîte de dialogue.
- mode - a string : 'modal', 'non-modal', 'replace'.

## Argument de sortie

- h - un handle QObject.

## Description

<p>errordlg crée une boîte de dialogue d'erreur.</p>

<p>h = errordlg(text_error, title, 'replace') indique si une boîte de dialogue existante portant le même titre doit être remplacée.</p>

<p>
                    
                </p>

## Exemples

```matlab
h = errordlg()
```

```matlab
h = errordlg('error string')
```

```matlab
h = errordlg('error string', 'dialog title')
```

```matlab
h = errordlg('error string', 'dialog title')
h = errordlg('error string', 'dialog title', 'on')
```

## Voir aussi

[warndlg](../gui/warndlg.md), [questdlg](../gui/questdlg.md), [helpdlg](../gui/helpdlg.md), [msgbox](../gui/msgbox.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
