# dlgeneratecleaner

Génère le fichier cleaner.m pour une gateway C++

## Syntaxe

- dlgeneratecleaner(destinationdir)
- dlgeneratecleaner(destinationdir, files)

## Argument d'entrée

- destinationdir - a string: destination directory where is generated the cleaner.m file.
- files - a string or a cell of string: list of files to delete.

## Description

<p>
                        dlgeneratecleaner génère un fichier 'cleaner.m' pour supprimer des fichiers.</p>

## Exemple

See module skeleton for example

```matlab

dlgeneratecleaner(tempdir());
text = fileread([tempdir(), 'cleaner.m'])
```

## Voir aussi

[dlgenerateunloader](../dynamic_link/dlgenerateunloader.md), [dlgenerategateway](../dynamic_link/dlgenerategateway.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
