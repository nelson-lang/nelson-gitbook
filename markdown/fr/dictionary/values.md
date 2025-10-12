# values

Valeurs du dictionnaire.

## Syntaxe

- v = values(d)
- v = values(d, 'cell')

## Argument d'entrée

- d - scalaire : objet dictionnaire.

## Argument de sortie

- v - valeurs.

## Description

<p>
            v = values(d) récupère un tableau contenant les valeurs du dictionnaire spécifié, d.</p>

<p>
                v = values(d, 'cell') renvoie éventuellement les valeurs sous forme de tableau cellulaire.</p>

## Exemple

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = values(d)
v = values(d, 'cell')

```

## Voir aussi

[dictionary](../dictionary/dictionary.md), [keys](../dictionary/keys.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
