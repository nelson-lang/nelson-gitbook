# addmodule

Ajouter un module à Nelson.

## 📝 Syntaxe

- addmodule(module_path, module_short_name)

## 📥 Argument d'entrée

- module_path - chaîne : chemin racine d'un module. Le chemin doit exister.
- module_short_name - chaîne : nom court du module. Ce nom ne doit pas être déjà utilisé.

## 📄 Description

<b>addmodule</b> enregistre un nouveau module identifié par son chemin et son nom court.

## 💡 Exemple

Voir le squelette de module pour un exemple

```matlab
ismodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
removemodule('module_skeleton')
```

## 🔗 Voir aussi

[ismodule](../modules_manager/ismodule.md), [removemodule](../modules_manager/removemodule.md), [getmodules](../modules_manager/getmodules.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
