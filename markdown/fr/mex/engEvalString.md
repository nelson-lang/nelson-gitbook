# engEvalString

Évalue une expression fournie sous forme de chaîne dans la portée de base

## 📝 Syntaxe

- #include "engine.h"
- int engEvalString(Engine *ep, const char *string);

## 📥 Argument d'entrée

- Engine \*ep - poignée du moteur Nelson.
- const char \*string - Expression à évaluer.

## 📤 Argument de sortie

- int - renvoie 1 si la session du moteur est fermée ou invalide. Sinon, renvoie 0.

## 📄 Description

Évalue l'expression fournie sous forme de chaîne dans la portée de base.

## 💡 Exemple

```matlab
edit([modulepath('mex'), '/examples/mex_engine_demo_2.c'])
```

## 🔗 Voir aussi

[mex](../mex/mex.md), [engPutVariable](../mex/engPutVariable.md), [engGetVariable](../mex/engGetVariable.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
