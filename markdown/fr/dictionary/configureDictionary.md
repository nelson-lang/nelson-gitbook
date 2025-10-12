# configureDictionary

Génère un dictionnaire avec des types définis pour les clés et les valeurs.

## Syntaxe

- d = configureDictionary(keyType, valueType)

## Argument d'entrée

- keyType - Type de données de la clé : scalaire string ou vecteur de caractères.
- valueType - Type de données de la valeur : scalaire string ou vecteur de caractères.

## Argument de sortie

- d - scalaire : un objet dictionnaire.

## Description

<p>
            d = configureDictionary(keyType, valueType) initialise un dictionnaire vide qui impose des clés du type keyType et des valeurs du type valueType.</p>

## Exemple

```matlab
d1 = configureDictionary("string", "single")
d2 = configureDictionary("cell", "struct")
```

## Voir aussi

[dictionary](../dictionary/dictionary.md), [isConfigured](../dictionary/isConfigured.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
