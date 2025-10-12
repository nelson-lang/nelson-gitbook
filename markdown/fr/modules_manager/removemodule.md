# removemodule

Supprime un module de Nelson.

## Syntaxe

- removemodule(module_short_name)

## Argument d'entrée

- module_short_name - chaîne : nom court du module.

## Description

<p>
            removemodule supprime un module identifié par son nom court.</p>

<p>Tous les modules du cœur sont protégés et ne peuvent pas être supprimés pendant une session Nelson.</p>

## Exemple

See module skeleton for example

```matlab
ismodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
removemodule('module_skeleton')
ismodule('module_skeleton')
```

## Voir aussi

[ismodule](../modules_manager/ismodule.md), [addmodule](../modules_manager/removemodule.md), [getmodules](../modules_manager/getmodules.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
