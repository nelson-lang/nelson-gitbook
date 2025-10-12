# havecompiler

Détecter si un compilateur C/C++ est configuré

## Syntaxe

- [status, compiler] = havecompiler()

## Argument de sortie

- status - un booléen.
- compiler - une chaîne : 'msvc', 'mingw', 'unix' ou ''.

## Description

<p>
        havecompiler détecte si un compilateur C/C++ est configuré pour Nelson.</p>

<p>Sur les plateformes Unix (Linux, MacOS), havecompiler renvoie toujours true et unix comme compilateur.</p>

## Exemple

```matlab
[status, message] = havecompiler()
```

## Voir aussi

[configuremsvc](../dynamic_link/configuremsvc.md), [configuremingw](../dynamic_link/configuremingw.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
