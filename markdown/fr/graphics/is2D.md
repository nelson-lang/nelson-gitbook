# is2D

Vérifie si ax est un axe 2D polaire ou cartésien.

## Syntaxe

- tf = is2D(ax)

## Argument d'entrée

- ax - Un objet graphique scalaire : axe.

## Argument de sortie

- tf - Un scalaire logique.

## Description

<p>
            is2D vérifie si ax est un axe 2D polaire ou cartésien.
        </p>

## Exemple

```matlab
f = figure();
ax = gca();
plot(ax, 1:10, sin(1:10));
assert_istrue(is2D(ax));

f = figure();
surf(peaks);
ax = gca();
assert_isfalse(is2D(ax));
```

## Voir aussi

[isgraphics](../graphics/isgraphics.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
