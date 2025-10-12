# sky

Table de couleurs 'sky'.

## Syntaxe

- c = sky
- c = sky(m)

## Argument d'entrée

- m - Un entier scalaire : nombre de couleurs (256 par défaut).

## Argument de sortie

- c - Table de couleurs 'sky'.

## Description

<p>
            sky retourne la table de couleurs avec des couleurs de ciel.</p>

## Exemple

```matlab
f = figure();
surf(peaks);
colormap('sky');
```

<img src="sky.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
