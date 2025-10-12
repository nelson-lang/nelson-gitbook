# requiremodule

Renvoie une erreur si le module n'est pas chargé dans Nelson.

## Syntaxe

- requiremodule(module_short_name)

## Argument d'entrée

- module_short_name - chaîne : nom court du module.

## Description

<p>
            requiremodule renvoie une erreur si le module demandé n'est pas chargé.</p>

<p>Cette fonction est utile pour vérifier une dépendance sur un autre module.</p>

## Exemple

See module skeleton for example

```matlab
ismodule('module_skeleton')
requiremodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
requiremodule('module_skeleton')
```

## Voir aussi

[ismodule](../modules_manager/ismodule.md), [addmodule](../modules_manager/removemodule.md), [getmodules](../modules_manager/getmodules.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
