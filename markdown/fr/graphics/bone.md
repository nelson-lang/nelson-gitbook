# bone

Palette de couleurs bone.

## Syntaxe

- c = bone
- c = bone(m)

## Argument d'entrée

- m - une valeur entière scalaire : nombre de couleurs (256 par défaut).

## Argument de sortie

- c - Palette de couleurs bone.

## Description

<p>
            bone retourne la palette de couleurs bone.</p>

## Exemple

```matlab
f = figure();
surf(peaks);
colormap('bone');
```

<img src="bone.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
