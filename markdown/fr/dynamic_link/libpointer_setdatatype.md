# libpointer_setdatatype

Définit le type d'un handle libpointer

## Syntaxe

- h.setdatatype(datatype)

## Argument d'entrée

- h - a libpointer handle.
- datatype - a string: new datatype.

## Description

<p>Définit le type de données d'un objet libpointer.</p>

## Exemple

```matlab
a = libpointer();
a.isNull()
a.setdatatype('doublePtr');
a.reshape(1, 1)
a.Value
```

## Voir aussi

[libpointer](../dynamic_link/libpointer.md), [C/Nelson equivalent data types](../dynamic_link/C_datatype.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
