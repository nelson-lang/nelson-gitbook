# spring

Table de couleurs 'spring'.

## Syntaxe

- c = spring
- c = spring(m)

## Argument d'entrée

- m - Un entier scalaire : nombre de couleurs (256 par défaut).

## Argument de sortie

- c - Table de couleurs 'spring'.

## Description

<p>
            spring retourne la table de couleurs avec des couleurs de printemps.</p>

## Exemple

```matlab
f = figure();
surf(peaks);
colormap('spring');
```

<img src="spring.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
