# mexCallMATLABWithTrap

Appelle une fonction NELSON et capture l'erreur.

## Syntaxe

- #include "mex.h"
- mxArray *mexCallMATLABWithTrap(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[], const char *functionName);

## Argument d'entrée

- nlhs - nombre d'arguments de sortie souhaités.
- plhs - pointeur vers un tableau de mxArray (sortie).
- nrhs - nombre d'arguments d'entrée souhaités.
- prhs - pointeur vers un tableau de mxArray (entrée).
- command_name - chaîne contenant le nom de la fonction Nelson appelée.

## Argument de sortie

- returned value - NULL si aucune erreur n'est survenue ; sinon, un pointeur vers un mxArray (objet MException).

## Description

<p>
            mexCallMATLABWithTrap appelle une fonction NELSON et capture l'erreur.</p>

<p>Si une erreur est détectée, mexCallMATLABWithTrap renvoie un mxArray (objet MException).</p>

## Exemple

```matlab
edit([modulepath('mex', 'tests'), '/test_mexCallMATLABWithTrap.m'])
```

## Voir aussi

[mexCallMATLAB](../mex/mexCallMATLAB.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
