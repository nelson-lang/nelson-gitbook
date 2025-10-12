# xmldocbuild

Fonction interne pour convertir des fichiers XML en HTML.

## Syntaxe

- status = xmldocbuild(source_dirs, destination_dir, main_title, export_format, overwrite)

## Argument d'entrée

- source_dirs - a cell of string: list of xml filenames.
- destination_dir - a string: directory destination.
- main_title - a string: title of main index.
- export_format - a string: 'qt', 'html', 'web', 'md'.
- overwrite - a logical: force overwrite if file destination already exists

## Argument de sortie

- status - a logical: files generated or not.

## Description

<p>xmldocbuild convertit des fichiers de documentation XML en HTML.</p>

<p>fonction interne</p>

## Voir aussi

[buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## Historique

| Version | Description                  |
| ------- | ---------------------------- |
| 1.0.0   | version initiale             |
| 1.15.0  | 'web' input parameter added. |

## Auteur

Allan CORNET
