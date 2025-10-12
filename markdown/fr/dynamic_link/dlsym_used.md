# dlsym_used

Renvoie la liste des handles dlsym actuellement utilisés

## Syntaxe

- r = dlsym_used()

## Argument de sortie

- h - a vector of dlsym handle.

## Description

<p>Renvoie la liste des handles dlsym actuellement utilisés.</p>

## Exemple

```matlab
dlsym_used(),delete(dlsym_used())
```

## Voir aussi

[dlsym](../dynamic_link/dlSym.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
