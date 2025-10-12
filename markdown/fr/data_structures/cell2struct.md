# cell2struct

Créer un struct à partir d'un tableau cellulaire.

## Syntaxe

- st = cell2struct(ce, fields)
- st = cell2struct(ce, fields, dim)

## Argument d'entrée

- ce - un tableau cellulaire.
- fields - un tableau cellulaire de chaînes.
- dim - dimension le long de laquelle la cellule est convertie.

## Argument de sortie

- st - un tableau de structs.

## Description

<p>
            st = cell2struct(ce, fields) crée un struct à partir d'un tableau cellulaire.</p>

## Exemple

```matlab
ce = {85, 50, 68; 'Pierre', 'Anna', 'Roberto'}
fields = {'Height','Name'}
A = cell2struct (ce, fields, 1)
```

## Voir aussi

[cell](../data_structures/cell.md), [struct](../data_structures/struct.md), [struct2cell](../data_structures/struct2cell.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
