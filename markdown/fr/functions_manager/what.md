# what

Obtient la liste des fonctions intégrées et macros de Nelson.

## Syntaxe

- list_builtin = what()
- [list_builtin, list_macro] = what()

## Argument de sortie

- list_builtin - une cellule de chaînes
- list_macro - une cellule de chaînes

## Description

<p>
            what retourne la liste de toutes les fonctions intégrées et macros disponibles dans la session Nelson actuelle.</p>

## Exemple

```matlab
l = what()
[l, m] = what()
```

## Voir aussi

[which](../functions_manager/which.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
