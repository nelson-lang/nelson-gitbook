# engClose

Ferme une session du moteur Nelson

## 📝 Syntaxe

- #include "engine.h"
- int engClose(Engine \*ep);

## 📥 Argument d'entrée

- Engine \*ep - poignée du moteur Nelson.

## 📤 Argument de sortie

- int - 0 en cas de succès et 1 en cas d'échec.

## 📄 Description

engClose ferme la session du moteur et termine la connexion.

## 💡 Exemple

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## 🔗 Voir aussi

[mex](../mex/mex.md), [engOpen](../mex/engOpen.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
