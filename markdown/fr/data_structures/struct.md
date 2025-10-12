# struct

Créer un struct.

## Syntaxe

- st = struct()
- st = struct([])
- st = struct(object)
- st = struct(field, value)
- st = struct(field, value, field2, value2, ..., fieldn, valuen)

## Argument d'entrée

- field, field2, ... , fieldn - chaînes : noms de champs, les noms valides sont identiques aux identifiants de variables.
- value, value2, ..., valuen - tous les types de données pris en charge par Nelson.
- object - un objet créé avec le builtin 'class'.

## Argument de sortie

- st - un struct

## Description

<p>
            struct renvoie une structure.</p>

## Exemples

```matlab
struct()
```

```matlab
struct([])
```

```matlab
date_st = struct('day', 15, 'month' ,'August','year', 1974)
```

Other way to create a struct:

```matlab
date_st.day = 15
date_st.month = 'August'
date_st.year = 1974
```

## Voir aussi

[cell](../data_structures/cell.md), [istruct](../types/isstruct.md).

## Historique

| Version | Description                          |
| ------- | ------------------------------------ |
| 1.0.0   | version initiale                     |
| 1.3.0   | Scalar String allowed as field name. |

## Auteur

Allan CORNET
