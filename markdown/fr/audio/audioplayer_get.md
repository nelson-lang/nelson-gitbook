# audioplayer_get

Obtient la valeur de propriété de l'interface audioplayer.

## Syntaxe

- v = get(h, propertyname)
- v = audioplayer_get(h, propertyname)
- v = h.propertyname

## Argument d'entrée

- h - un objet audioplayer.
- propertyname - une chaîne : le nom de la propriété de l'objet audioplayer.

## Argument de sortie

- v - une variable Nelson.

## Description

<p>La fonction retourne la valeur de la propriété spécifiée dans la chaîne, propertyname.</p>

## Exemple

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playObj.Running

```

## Voir aussi

[audioplayer_set](../audio/audioplayer_set.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
