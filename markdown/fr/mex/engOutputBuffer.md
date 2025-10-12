# engOutputBuffer

Spécifie le tampon de caractères pour la sortie de Nelson

## Syntaxe

- #include "engine.h"
- int engOutputBuffer(Engine *ep, char *p, int n);

## Argument d'entrée

- Engine \*ep - poignée du moteur Nelson.
- char \*p - Pointeur vers un tampon de caractères.
- int n - Longueur du tampon.

## Argument de sortie

- int - renvoie 1 si la session du moteur est fermée ou invalide. Sinon, renvoie 0.

## Description

<p>Specify char buffer for Nelson output.</p>

<p>To turn off output buffering in C, use: engOutputBuffer(ep, NULL, 0);
    </p>

## Exemple

```matlab
edit([modulepath('mex'), '/examples/mex_engine_demo_2.c'])
```

## Voir aussi

[mex](../mex/mex.md), [engPutVariable](../mex/engPutVariable.md), [engGetVariable](../mex/engGetVariable.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
