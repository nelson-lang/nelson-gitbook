# isKey

Vérifie si le dictionnaire contient la clé

## Syntaxe

- tf = isKey(d)

## Argument d'entrée

- d - scalaire : objet dictionnaire.

## Argument de sortie

- tf - scalaire logique : true si la clé existe, false sinon.

## Description

<p>
        tf = isKey(d, key) renvoie true logique si la clé spécifiée existe dans le dictionnaire configuré, et false logique si elle n'existe pas.</p>

<p>Si d est un dictionnaire non configuré, isKey lève une erreur.</p>

<p>Si key est un tableau de plusieurs clés, alors tf est un tableau logique de la même taille.</p>

## Exemple

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
tf = isKey(d, "John")
tf = isKey(d, ["biil" , "Yannis")
```

## Voir aussi

[dictionary](../dictionary/dictionary.md), [configureDictionary](../dictionary/configureDictionary.md), [keys](../dictionary/keys.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
