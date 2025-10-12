# flag

Palette de couleurs flag.

## Syntaxe

- c = flag
- c = flag(m)

## Argument d'entrée

- m - Un entier scalaire : nombre de couleurs (256 par défaut).

## Argument de sortie

- c - Palette de couleurs flag.

## Description

<p>
            flag retourne la palette de couleurs flag.</p>

## Exemple

```matlab
f = figure();
surf(peaks);
colormap('flag');
```

<img src="flag.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
