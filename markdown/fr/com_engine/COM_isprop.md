# COM_isprop

Détermine si l'entrée est une propriété existante d'un objet COM.

## Syntaxe

- r = COM_isprop(h, propertyname)
- r = isprop(h, propertyname)

## Argument d'entrée

- h - un objet COM.
- propertyname - une chaîne : nom de propriété testé comme propriété valide pour l'objet COM.

## Argument de sortie

- r - un booléen.

## Description

r = isprop(h, propertyname) retourne vrai si le nom spécifié est une propriété de l'objet COM h. Sinon, il retourne faux.

## Exemple

```matlab
e = actxserver('Excel.Application');
isprop(e, 'Window')
delete(e)
clear e

```

## Voir aussi

[COM_ismethod](../com_engine/COM_ismethod.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
