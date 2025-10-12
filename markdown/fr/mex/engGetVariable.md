# engGetVariable

Copie une variable depuis l'espace de travail du moteur Nelson

## Syntaxe

- #include "engine.h"
- mxArray *engGetVariable(Engine *ep, const char \*name);

## Argument d'entrée

- Engine \*ep - poignée du moteur Nelson.
- const char \*name - nom du mxArray dans l'espace de travail de Nelson (portée de base).

## Argument de sortie

- mxArray \* - Pointeur vers une structure mxArray allouée. N'oubliez pas de libérer la mémoire.

## Description

<p>Copie une variable depuis l'espace de travail du moteur Nelson.</p>

<p>La limite de taille des données transférées est de 2048 Mo.</p>

## Exemple

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## Voir aussi

[mex](../mex/mex.md), [engPutVariable](../mex/engPutVariable.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
