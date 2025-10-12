# parallel

Connexion parallèle de deux modèles.

## Syntaxe

- sys = parallel(sys1, sys2)

## Argument d'entrée

- sys1, sys2 - Modèles LTI.

## Argument de sortie

- sys - Modèle LTI.

## Description

<p>Connecte deux systèmes en parallèle. Les systèmes doivent être tous deux continus ou discrets et avoir le même temps d'échantillonnage.</p>

<p>Les gains statiques sont considérés comme neutres et peuvent être définis par des matrices classiques.</p>

## Exemple

```matlab
sys1 = tf([1 4], [8 2 1]);
sys2 = tf(1, [8 2 1]);
sys = parallel(sys2, sys2)
```

## Voir aussi

[series](../control_system/series.md), [append](../control_system/append.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
