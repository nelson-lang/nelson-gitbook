# dlgenerateunloader

Génère le fichier unloader.m pour une gateway C++

## Syntaxe

- dlgenerateunloader(destinationdir, libraryname)

## Argument d'entrée

- destinationdir - a string: destination directory where is generated the unloader.m file.
- libraryname - a string or a cell of string: external dynamic library names.

## Description

<p>
                        dlgenerateunloader génère un fichier 'unloader.m' pour décharger des bibliothèques dynamiques externes.</p>

## Exemple

See module skeleton for example

```matlab

dlgenerateunloader(tempdir(), {'c_dynamic_library_1',  'c_dynamic_library_2'});
text = fileread([tempdir(), 'unloader.m'])
```

## Voir aussi

[dlgenerateloader](../dynamic_link/dlgenerateloader.md), [dlgenerategateway](../dynamic_link/dlgenerategateway.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
