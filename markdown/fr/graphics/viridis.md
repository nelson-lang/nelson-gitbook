# viridis

Tableau de couleurs Viridis.

## Syntaxe

- c = viridis
- c = viridis(m)

## Argument d'entrée

- m - Une valeur entière scalaire : Nombre de couleurs (256 par défaut).

## Argument de sortie

- c - Tableau de couleurs Viridis.

## Description

<p>
            viridis retourne la carte de couleurs avec les couleurs Viridis.
        </p>

## Bibliographie

Carte de couleurs créée par Stéfan van der Walt et Nathaniel Smith

## Exemple

```matlab

f = figure();
surf(peaks);
view(2);
colormap('viridis');

```

<img src="viridis.svg" align="middle"/>

## Voir aussi

[colormap](../graphics/colormap.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | Version initiale |

## Auteur

Allan CORNET
