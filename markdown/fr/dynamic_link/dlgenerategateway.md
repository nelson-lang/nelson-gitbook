# dlgenerategateway

Génère une gateway C++

## Syntaxe

- dlgenerategateway(destinationdir, module_name, builtin_table)

## Argument d'entrée

- destinationdir - a string: destination directory where is generated the gateway file.
- module_name - a string: module name exposed in Nelson.
- builtin_table - a cell composed of cell with {name exposed in Nelson, nb output arguments, nb input arguments}

## Description

<p>
                        dlgenerategateway génère une gateway C++ utilisée par addmodule.</p>

## Exemple

See module skeleton for example

```matlab
dlgenerategateway(tempdir(), 'module_skeleton', {{'cpp_sum', 1, 2}; {'cpp_sub', 2, 3}});
text = fileread([tempdir(), 'Gateway.cpp'])
```

## Voir aussi

[addmodule](../modules_manager/addmodule.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
