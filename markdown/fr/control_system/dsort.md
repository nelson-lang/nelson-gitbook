# dsort

Trie les pôles en temps discret par magnitude.

## Syntaxe

- s = dsort(p)
- [s, ndx] = dsort(p)

## Argument d'entrée

- p - p : un vecteur

## Argument de sortie

- s - vecteur trié par magnitude.
- ndx - indices du tri.

## Description

<p>dsort organise les pôles en temps discret dans le vecteur p dans un ordre décroissant basé sur leur magnitude, les pôles instables prenant la priorité au début de la liste triée.</p>

## Exemple

```matlab
p = [-2.410 + 5.573i;
-2.410 - 5.573i;
1.503;
-0.972;
-2.590];
[s, ndx] = dsort(p)


```

## Voir aussi

[esort](../control_system/esort.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
