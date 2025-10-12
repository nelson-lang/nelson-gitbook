# xmldoctohtml

Convertit des fichiers d'aide XML Nelson en HTML.

## Syntaxe

- status = xmldoctohtml(source_dirs, destination_dir, main_title, overwrite)

## Argument d'entrée

- source_dirs - a cell of string: list of xml filenames.
- destination_dir - a string: directory destination.
- main_title - a string: title of main index.
- overwrite - a logical: force overwrite if file destination already exists
- html_type - une chaîne : 'web' (par défaut) ou 'html' (local).

## Argument de sortie

- status - a logical: files generated or not.

## Description

<p>xmldoctohelp convertit des fichiers d'aide XML Nelson en HTML.</p>

## Voir aussi

[xmldocbuild](../help_tools/xmldocbuild.md), [buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## Historique

| Version | Description              |
| ------- | ------------------------ |
| 1.0.0   | version initiale         |
| 1.15.0  | html_type input argument |

## Auteur

Allan CORNET
