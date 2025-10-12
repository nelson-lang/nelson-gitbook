# engSetVisible

Afficher ou masquer la session du moteur Nelson

## Syntaxe

- #include "engine.h"
- int engSetVisible(Engine \*ep, bool value);

## Argument d'entrée

- Engine \*ep - poignée du moteur Nelson.
- bool value - mettre la valeur à 1 pour rendre la fenêtre du moteur visible, ou à 0 pour la rendre invisible.

## Argument de sortie

- int - 0 en cas de succès ou 1 si une erreur survient.

## Description

<p>Afficher ou masquer la session du moteur Nelson</p>

## Exemple

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## Voir aussi

[mex](../mex/mex.md), [engGetVisible](../mex/engGetVisible.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
