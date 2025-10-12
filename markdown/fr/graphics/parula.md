# parula

Palette de couleurs Parula.

## Syntaxe

- c = parula
- c = parula(m)

## Argument d'entrée

- m - Valeur entière scalaire : nombre de couleurs (256 par défaut).

## Argument de sortie

- c - Palette de couleurs Parula.

## Description

<p>
            parula retourne la palette de couleurs Parula.
        </p>

<p>
            parula est la palette de couleurs par défaut.
        </p>

## Exemple

```matlab
f = figure();
surf(peaks);
colormap('parula');
```

<img src="parula.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
