# xmldoctomd

Convertit des fichiers d'aide XML Nelson au format Markdown.

## Syntaxe

- status = xmldoctomd(source_dirs, destination_dir, main_title, overwrite)

## Argument d'entrée

- source_dirs - a cell of string: list of xml filenames.
- destination_dir - a string: directory destination.
- main_title - a string: title of main index.
- overwrite - a logical: force overwrite if file destination already exists

## Argument de sortie

- status - a logical: files generated or not.

## Description

<p>xmldoctomd convertit des fichiers d'aide XML Nelson au format Markdown.</p>

## Voir aussi

[xmldocbuild](../help_tools/xmldocbuild.md), [buildhelpmd](../help_tools/buildhelpmd.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
