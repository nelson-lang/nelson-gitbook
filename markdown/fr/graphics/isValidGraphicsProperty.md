# isValidGraphicsProperty

Vérifie si le nom de propriété est valide.

## Syntaxe

- tf = isValidGraphicsProperty(typename, propertyname)

## Argument d'entrée

- typename - Un vecteur de caractères ou une chaîne scalaire : 'axes', 'line', 'image', 'root', 'text', 'figure'.
- propertyname - Un vecteur de caractères ou une chaîne scalaire : nom de la propriété à vérifier.

## Argument de sortie

- tf - Un scalaire logique.

## Description

<p>
            isValidGraphicsProperty vérifie si le nom de propriété existe pour une classe d'objet graphique.
        </p>

<p>
            Cette fonction est une aide pour vérifier les paramètres d'entrée des fonctions graphiques.
        </p>

## Exemple

```matlab
tf = isValidGraphicsProperty('figure', 'Type')
tf = isValidGraphicsProperty('figure', 'TypeType')
```

## Voir aussi

[isprop](../handle/isprop.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
