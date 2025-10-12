# abyss

Palette de couleurs abyss.

## Syntaxe

- c = abyss
- c = abyss(m)

## Argument d'entrée

- m - une valeur entière scalaire : nombre de couleurs (256 par défaut).

## Argument de sortie

- c - Palette de couleurs abyss.

## Description

<p>
            abyss retourne la palette de couleurs abyss.</p>

## Exemple

```matlab
f = figure();
surf(peaks);
colormap('abyss');
```

<img src="abyss.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
