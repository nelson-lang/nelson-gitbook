# dllibinfo

Renvoie la liste des symboles disponibles dans une bibliothèque partagée

## Syntaxe

- c = dllibinfo(lib)

## Argument d'entrée

- lib - a dllib handle: library already loaded.

## Argument de sortie

- c - un tableau de cellules de chaînes.

## Description

<p>
                        dllibinfo renvoie la liste des symboles disponibles dans une bibliothèque partagée.</p>

## Exemple

```matlab
lib = dlopen(modulepath('dynamic_link', 'builtin'))
c = dllibinfo(lib)
```

## Voir aussi

[dlopen](../dynamic_link/dlopen.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
