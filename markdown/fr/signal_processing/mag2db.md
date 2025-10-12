# mag2db

Convertit une magnitude en décibels (dB).

## Syntaxe

- db = mag2db(mag)

## Argument d'entrée

- mag - tableau d'entrée : scalaire, vecteur ou matrice.

## Argument de sortie

- db - valeurs correspondantes en décibels

## Description

<p>
            db = mag2db(mag) convertit les valeurs de magnitude en décibels (dB).</p>

<p>La formule de conversion est :</p>

$$\text{dB} = 20 \log_{10}(\text{magnitude})$$

<p>Cette conversion est couramment utilisée en traitement du signal, acoustique et électronique pour exprimer les rapports sur une échelle logarithmique.</p>

## Exemple

```matlab
DB = mag2db([1, 0.01])
```

## Voir aussi

[db2mag](../signal_processing/db2mag.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
