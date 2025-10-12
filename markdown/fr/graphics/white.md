# white

tableau de colormap blanc.

## Syntaxe

- c = white
- c = white(m)

## Argument d'entrée

- m - une valeur entière scalaire : Nombre de couleurs (256 par défaut).

## Argument de sortie

- c - Tableau de colormap blanc.

## Description

<p>
            white retourne la colormap avec des couleurs blanches.</p>

## Exemple

```matlab
f = figure();
surf(peaks);
colormap('white');
```

<img src="white.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
