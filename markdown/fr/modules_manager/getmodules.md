# getmodules

Renvoie la liste des modules chargés dans Nelson.

## Syntaxe

- modules_name = getmodules()
- [modules_name, modules_root_path, modules_version, modules_protected] = getmodules()

## Argument de sortie

- modules_name - cellule de chaînes : noms des modules.
- modules_root_path - cellule de chaînes : chemins des modules.
- modules_version - cellule de vecteurs : [major, minor, patch].
- modules_protected - vecteur logique : true si le module peut être supprimé, sinon false.

## Description

<p>
            getmodules renvoie la liste des modules chargés dans Nelson.</p>

<p>Tous les modules du cœur sont protégés et ne peuvent pas être supprimés pendant une session Nelson.</p>

## Exemple

```matlab
[modules_name, modules_root_path, modules_version, modules_protected] = getmodules()
```

## Voir aussi

[requiremodule](../modules_manager/requiremodule.md), [ismodule](../modules_manager/ismodule.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
