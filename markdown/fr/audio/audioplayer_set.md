# audioplayer_set

Définit la propriété de l'objet ou de l'interface à la valeur spécifiée.

## Syntaxe

- set(h, propertyname, value)
- audioplayer_set(h, propertyname, value)
- h.propertyname = value

## Argument d'entrée

- h - un objet audioplayer.
- propertyname - une chaîne : le nom de la propriété de l'objet audioplayer.
- value - une chaîne, un booléen, un double ...

## Description

<p>La fonction définit la propriété spécifiée dans la chaîne propertyname à la valeur donnée.</p>

## Exemple

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playObj.Tag = 'my audio object'
```

## Voir aussi

[audioplayer_get](../audio/audioplayer_get.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
