# getfield

Renvoie la valeur d'un champ dans un struct.

## Syntaxe

- value = getfield(st, field)

## Argument d'entrée

- st - une structure.
- field - une chaîne.

## Argument de sortie

- value - la valeur d'un champ d'une structure.

## Description

<p>
                        value = getfield(st, field) renvoie la valeur du champ nommé field d'une structure.</p>

## Exemple

```matlab
example.a = 1
example.b = 'nelson'
example.c = []
getfield(example, 'b')
```

## Voir aussi

[struct](../data_structures/struct.md), [fieldnames](../data_structures/fieldnames.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
