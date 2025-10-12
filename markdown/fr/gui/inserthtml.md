# inserthtml

Insère du HTML dans la console GUI.

## Syntaxe

- inserthtml(html_txt)

## Argument d'entrée

- html_txt - a string: html text

## Description

<p>inserthtml insère du code HTML dans la console GUI.</p>

## Exemple

```matlab
inserthtml(markdown(fileread([nelsonroot(),'/CHANGELOG.md'])))
```

## Voir aussi

[markdown](../help_tools/markdown.md), [fileread](../stream_manager/fileread.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
