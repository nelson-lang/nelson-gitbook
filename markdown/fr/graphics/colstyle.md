# colstyle

Analyse la couleur et le style à partir d'une chaîne.

## Syntaxe

- [linespec, colorspec, markerspec, msg] = colstyle (str)
- [linespec, colorspec, markerspec, msg] = colstyle (str, 'plot')

## Argument d'entrée

- str - un vecteur ligne de caractères ou une chaîne scalaire : spécification de ligne.
- 'plot' - linespec retourne 'none' et non '' avec cette option.

## Argument de sortie

- linespec - une chaîne : type de ligne.
- colorspec - une chaîne : partie couleur.
- markerspec - une chaîne : partie marqueur.
- msg - une chaîne : contient le message d'erreur.

## Description

<p>
            colstyle analyse la couleur et le style à partir d'une chaîne.</p>

## Exemple

```matlab
[l, c, m, msg] = colstyle('r:x')
[l, c, m, msg] = colstyle('*')
[l, c, m, msg] = colstyle('*', 'plot')
```

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
