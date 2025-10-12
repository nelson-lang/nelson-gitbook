# COM_get

Obtenir la valeur d'une propriété depuis l'interface COM.

## Syntaxe

- v = get(h, propertyname)
- v = COM_get(h, propertyname)
- v = h.propertyname

## Argument d'entrée

- h - un objet COM.
- propertyname - une chaîne : le nom de la propriété de l'objet COM.

## Argument de sortie

- v - une variable nelson.

## Description

<p>La fonction retourne la valeur de la propriété spécifiée dans la chaîne, propertyname.</p>

## Exemple

```matlab
e = actxserver('Excel.Application');
get(e, 'Path')
e.Path
```

## Voir aussi

[COM_set](../com_engine/COM_set.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
