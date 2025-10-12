# dlgenerateloader

Génère le fichier loader.m pour une gateway C++

## Syntaxe

- dlgenerateloader(destinationdir, libraryname)

## Argument d'entrée

- destinationdir - a string: destination directory where is generated the loader.m file.
- libraryname - a string or a cell of string: external dynamic library names.

## Description

<p>
                        dlgenerateloader génère un fichier 'loader.m' pour charger des bibliothèques dynamiques externes.</p>

## Exemple

See module skeleton for example

```matlab

dlgenerateloader(tempdir(), {'c_dynamic_library_1',  'c_dynamic_library_2'});
text = fileread([tempdir(), 'loader.m'])
```

## Voir aussi

[dlgenerateunloader](../dynamic_link/dlgenerateunloader.md), [dlgenerategateway](../dynamic_link/dlgenerategateway.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
