# engOpen

Démarre un processus Nelson

## Syntaxe

- #include "engine.h"
- Engine *engOpen(const char *startcmd);

## Argument d'entrée

- startcmd - Commande de démarrage de Nelson (NULL).

## Argument de sortie

- Engine - poignée du moteur Nelson ou NULL.

## Description

<p>
            engOpen démarre un processus Nelson afin d'utiliser Nelson comme moteur de calcul.</p>

<p>Le chemin des bibliothèques doit contenir le chemin de Nelson pour trouver les bibliothèques de Nelson à l'exécution.</p>

<p>Définissez la valeur sur le chemin renvoyé par la commande Nelson suivante :</p>

<p>
                res = modulepath('nelson', 'builtin')</p>

<p>sur Linux : export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:res
            </p>

<p>export PATH=$PATH:res
        </p>

<p>sur macOS : export DYLIB_LIBRARY_PATH=$DYLIB_LIBRARY_PATH:res
    </p>

<p>export PATH=$PATH:res
</p>

<p>sur Windows : set PATH=%PATH%;res
</p>

## Exemple

```matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
```

## Voir aussi

[mex](../mex/mex.md), [engClose](../mex/engClose.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
