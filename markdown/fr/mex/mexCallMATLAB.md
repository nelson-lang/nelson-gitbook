# mexCallMATLAB

Appelle une fonction NELSON

## 📝 Syntaxe

- #include "mex.h"
- int mexCallMATLAB(int nlhs, mxArray \*plhs[], int nrhs, mxArray \*prhs[], const char \*command_name);

## 📥 Argument d'entrée

- nlhs - nombre d'arguments de sortie souhaités.
- plhs - pointeur vers un tableau de mxArray (sortie).
- nrhs - nombre d'arguments d'entrée souhaités.
- prhs - pointeur vers un tableau de mxArray (entrée).
- command_name - chaîne de caractères contenant le nom de la fonction NELSON appelée.

## 📤 Argument de sortie

- valeur retournée - 0 si l'appel réussit, et une valeur non nulle en cas d'échec.

## 📄 Description

<b>mexCallMATLAB</b> appelle une fonction NELSON.

Si la fonction appelée détecte une erreur, NELSON terminera le MEX et rendra le contrôle à NELSON.

## 💡 Exemple

```matlab
edit([modulepath('mex', 'tests'), '/test_mexCallMATLAB.m'])
```

## 🔗 Voir aussi

[eval](../core/eval.md), [mexCallMATLABWithTrap](../mex/mexCallMATLABWithTrap.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
