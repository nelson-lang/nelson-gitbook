# sscanf

Lire des données formatées depuis des chaînes.

## Syntaxe

- R = sscanf(str, format)
- R = sscanf(str, format, sizeR)
- [R, count] = sscanf(...)
- [R, count, errmsg] = sscanf(...)
- [R, count, errmsg, nextindex] = sscanf(...)

## Argument d'entrée

- str - tableau de caractères ou scalaire de type string.
- format - une chaîne décrivant le format utilisé par la fonction ; voir fscanf pour les formats supportés.
- sizeR - dimensions souhaitées de R.

## Argument de sortie

- R - matrice ou vecteur de caractères.
- count - nombre d'éléments lus dans le tableau de sortie.
- errmsg - Message d'erreur.
- nextindex - Position après le dernier caractère analysé.

## Description

<p>Lit des données formatées depuis des chaînes.</p>

## Exemple

```matlab
str = "2.7183  3.1416  0.0073";
R = sscanf(str,'%f',[2 2])
```

## Voir aussi

[fscanf](../stream_manager/fscanf.md), [sprintf](../stream_manager/sprintf.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
