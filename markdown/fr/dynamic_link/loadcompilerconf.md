# loadcompilerconf

Charger la configuration du compilateur

## Syntaxe

- res = loadcompilerconf()
- [res, compiler] = loadcompilerconf()

## Argument de sortie

- res - un booléen
- compiler - une chaîne : 'msvc', 'mingw', 'unix' ou ''

## Description

<p>
            loadcompilerconf renvoie true si un compilateur a été configuré auparavant avec configuremsvc ou configuremingw.</p>

<p>
                loadcompilerconf renvoie toujours false sur les autres plateformes et 'unix' comme compilateur.</p>

<p>
                    loadcompilerconf est appelé au démarrage de Nelson.</p>

## Voir aussi

[removecompilerconf](../dynamic_link/removecompilerconf.md), [configuremingw](../dynamic_link/configuremingw.md), [configuremsvc](../dynamic_link/configuremsvc.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
