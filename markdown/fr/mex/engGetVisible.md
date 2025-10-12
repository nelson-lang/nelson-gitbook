# engGetVisible

Détermine la visibilité de la session du moteur Nelson

## Syntaxe

- #include "engine.h"
- int engGetVisible(Engine *ep, bool *value);

## Argument d'entrée

- Engine \*ep - poignée du moteur Nelson.

## Argument de sortie

- int - 0 en cas de succès ou 1 si une erreur survient.
- bool \* - true (visible) ou false (minimisé).

## Description

<p>Détermine la visibilité de la session du moteur Nelson</p>

## Exemple

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## Voir aussi

[mex](../mex/mex.md), [engSetVisible](../mex/engSetVisible.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
