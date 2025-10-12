# keys

Clés du dictionnaire.

## Syntaxe

- k = keys(d)
- k = keys(d, 'cell')

## Argument d'entrée

- d - scalaire : objet dictionnaire.

## Argument de sortie

- k - clés.

## Description

<p>
            k = keys(d) récupère un tableau contenant les clés du dictionnaire spécifié, d.</p>

<p>
                k = keys(d, 'cell') renvoie éventuellement les clés sous forme de tableau cellulaire.</p>

## Exemple

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
k = keys(d)
k = keys(d, 'cell')

```

## Voir aussi

[dictionary](../dictionary/dictionary.md), [values](../dictionary/values.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
