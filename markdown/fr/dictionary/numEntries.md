# numEntries

Nombre de paires clé-valeur dans le dictionnaire.

## Syntaxe

- n = numEntries(d)

## Argument d'entrée

- d - scalaire : objet dictionnaire.

## Argument de sortie

- n - scalaire : nombre d'entrées.

## Description

<p>
        n = numEntries(d) récupère le nombre de paires clé-valeur stockées dans le dictionnaire.</p>

<p>Si d est un dictionnaire non configuré, alors numEntries renvoie 0.</p>

## Exemple

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
n = numEntries(d)

```

## Voir aussi

[dictionary](../dictionary/dictionary.md), [entries](../dictionary/entries.md), [keys](../dictionary/keys.md), [values](../dictionary/values.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
