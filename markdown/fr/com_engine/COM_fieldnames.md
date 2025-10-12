# COM_fieldnames

Retourne les noms des propriétés d'un objet COM.

## Syntaxe

- l = COM_fieldnames(h)
- l = fieldnames(h)

## Argument d'entrée

- h - un objet COM.

## Argument de sortie

- l - une cellule de chaînes.

## Description

        fieldnames retourne une cellule de chaînes avec les noms des propriétés.

## Exemple

```matlab
e = actxserver('Excel.Application');
fieldnames(e)
delete(e)
clear e
```

## Voir aussi

[COM_set](../com_engine/COM_set.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
