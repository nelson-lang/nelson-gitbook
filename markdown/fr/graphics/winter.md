# winter

Tableau de colormap hiver.

## Syntaxe

- c = winter
- c = winter(m)

## Argument d'entrée

- m - une valeur entière scalaire : Nombre de couleurs (256 par défaut).

## Argument de sortie

- c - Tableau de colormap hiver.

## Description

<p>
            winter retourne la colormap avec des couleurs d'hiver.</p>

## Exemple

```matlab
f = figure();
surf(peaks);
colormap('winter');
```

<img src="winter.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
