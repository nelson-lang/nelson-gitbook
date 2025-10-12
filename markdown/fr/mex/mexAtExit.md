# mexAtExit

Enregistre une fonction à appeler lorsque le fichier MEX est libéré ou lorsque Nelson se termine

## Syntaxe

- #include "mex.h"
- int mexAtExit(void (\*ExitFcn)(void));

## Argument d'entrée

- ExitFcn - Pointeur vers la fonction que vous souhaitez exécuter à la sortie.

## Argument de sortie

- valeur retournée - renvoie 0.

## Description

<p>Chaque MEX ne peut enregistrer qu'une seule sous-routine de sortie active à la fois.</p>

<p>
            mexAtExit enregistre une sous-routine qui sera appelée juste avant la fin de Nelson ou lorsque la commande clear est exécutée.</p>

## Exemple

```matlab
edit([modulepath('mex', 'tests'), '/test_mexAtExit.m'])
```

## Voir aussi

[exit](../core/exit.md), [clear](../memory_manager/clear.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
