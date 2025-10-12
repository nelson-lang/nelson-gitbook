# dlopen

Charge une bibliothèque dynamique

## Syntaxe

- lib = dlopen(libraryname)

## Argument d'entrée

- libraryname - une chaîne : nom de la bibliothèque dynamique.

## Argument de sortie

- lib - un handle dllib.

## Description

<p>
            dlopen charge une bibliothèque dynamique.</p>

<p>
                dlopen renvoie un handle dllib possédant une propriété Path.</p>

<p>
                    Les méthodes get, ismethod, isprop, disp, delete, isvalid, used, eq, ne, isequal, horzcat, vertcat sont surchargées pour le type dllib.</p>

<p>La bibliothèque est d'abord recherchée dans NELSON_LIBRARY_PATH puis dans PATH sous Windows ou LD_LIBRARY_PATH / DYLD_LIBRARY_PATH sur Linux/MacOS.</p>

<p>Le chemin NELSON_LIBRARY_PATH peut être modifié avec setenv.</p>

## Exemple

```matlab
path_1 = modulepath('dynamic_link', 'builtin');
lib1 = dlopen(path_1)
isvalid(lib1)
dlclose(lib1)
isvalid(lib1)
clear lib1
```

## Voir aussi

[dlclose](../dynamic_link/dlclose.md), [dllibisloaded](../dynamic_link/dllibisloaded.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
