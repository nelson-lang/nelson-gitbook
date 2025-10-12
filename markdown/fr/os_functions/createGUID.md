# createGUID

Crée un GUID.

## Syntaxe

- s = createGUID()
- c = createGUID(numbers_of_GUID)

## Argument d'entrée

- numbers_of_GUID - un entier : nombre de GUID à créer.

## Argument de sortie

- s - une chaîne
- c - une cellule de chaînes.

## Description

<p>createGUID crée un Globally Unique IDentifier (GUID), un entier 128 bits unique utilisé pour les CLSID et les identifiants d'interface.</p>

## Exemple

```matlab
createGUID()
createGUID(10)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
