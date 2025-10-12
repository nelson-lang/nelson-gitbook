# gca

Récupère l'objet axes courant.

## Syntaxe

- ca = gca()

## Argument de sortie

- ca - Un objet graphique : objet axes graphique.

## Description

<p>
            ca = gca() retourne l'objet axes graphique courant.</p>

<p>Si aucun axes n'existe, gca() crée un axes et retourne son objet graphique.</p>

## Exemple

```matlab
ca = gca()
isgraphics(ax, 'axes')
```

## Voir aussi

[isgraphics](../graphics/isgraphics.md), [axes](../graphics/axes.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
