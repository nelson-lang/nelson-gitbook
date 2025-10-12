# gcf

Récupère l'objet figure courant.

## Syntaxe

- cf = gcf()

## Argument de sortie

- cf - Un objet graphique : objet figure graphique.

## Description

<p>
            cf = gcf() retourne l'objet figure graphique courant.</p>

<p>Si aucune figure n'existe, gcf() crée une figure et retourne son objet graphique.</p>

## Exemple

```matlab
cf = gcf();
root = groot();
isequal(root.CurrentFigure, cf)
```

## Voir aussi

[figure](../graphics/figure.md), [groot](../graphics/groot.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
