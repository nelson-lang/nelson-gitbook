# engOpenSingleUse

Démarre une session du moteur Nelson pour un usage unique et non partagé.

## Syntaxe

- #include "engine.h"
- Engine *engOpenSingleUse(const char *startcmd, void *dcom, int *retstatus);

## Argument d'entrée

- startcmd - Commande de démarrage de Nelson (NULL).
- dcom - doit être NULL.

## Argument de sortie

- Engine - poignée du moteur Nelson ou NULL.
- retstatus - statut ; cause possible de l'échec.

## Description

<p>engOpenSingleUse start Nelson engine session for single and nonshared use.</p>

## Exemple

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## Voir aussi

[mex](../mex/mex.md), [engClose](../mex/engClose.md), [engOpen](../mex/engOpen.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
