# buildhelpmd

Génère l'aide des modules de Nelson pour GitBook.

## Syntaxe

- buildhelpmd(dirdest)
- buildhelpmd(dirdest, module_name)

## Argument d'entrée

- dirdest - a string: a path destination.
- module_name - a string: module name (module must be loaded).

## Description

<p>buildhelpmd génère des fichiers d'aide pour GitBook (markdown).</p>

## Exemple

```matlab
buildhelpmd(tempdir());
buildhelpmd(tempdir(), 'core');
```

## Voir aussi

[buildhelp](../help_tools/buildhelp.md), [doc](../help_tools/doc.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
