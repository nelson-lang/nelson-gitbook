# isConfigured

Vérifie si le dictionnaire a des types assignés aux clés et aux valeurs.

## Syntaxe

- tf = isConfigured(d)

## Argument d'entrée

- d - scalaire : objet dictionnaire.

## Argument de sortie

- tf - scalaire logique : true si configuré, false sinon.

## Description

<p>
            tf = isConfigured(d) renvoie un logique true si le dictionnaire spécifié est configuré, et un logique false s'il ne l'est pas.</p>

<p>Un dictionnaire est considéré comme configuré lorsqu'il a des types assignés pour ses clés et ses valeurs. L'ajout d'entrées à un dictionnaire non configuré le configure.</p>

## Exemple

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
tf = isConfigured(d)
d2 = dictionary()
tf = isConfigured(d2)


```

## Voir aussi

[dictionary](../dictionary/dictionary.md), [configureDictionary](../dictionary/configureDictionary.md), [insert](../dictionary/insert.md), [values](../dictionary/values.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
