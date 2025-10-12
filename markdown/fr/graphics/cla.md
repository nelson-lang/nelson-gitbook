# cla

Efface les axes.

## Syntaxe

- cla
- cla(ax)
- ca = cla(...)

## Argument d'entrée

- ax - un objet graphique scalaire sur des axes existants.

## Argument de sortie

- ca - un objet graphique : objet axes utilisé.

## Description

<p>
            cla efface les axes courants.</p>

## Exemple

```matlab
f = figure();
x = linspace(0, 2*pi);
y = sin(3 * x);
plot(x, y)
sleep(5)
cla
```

## Voir aussi

[gca](../graphics/gca.md), [clf](../graphics/clf.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
