# db2pow

Convertit un gain en décibels (dB) en puissance.

## Syntaxe

- pow = db2pow(db)

## Argument d'entrée

- db - tableau d'entrée : scalaire, vecteur ou matrice.

## Argument de sortie

- pow - puissance correspondante

## Description

<p>
            pow = db2pow(db) renvoie la puissance correspondante.</p>

## Exemple

```matlab
pow = db2pow([0, -20])
```

## Voir aussi

[pow2db](../signal_processing/pow2db.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
