# addmodule

Ajouter un module à Nelson.

## 📝 Syntaxe

- addmodule(module\_path, module\_short\_name)

## 📥 Argument d'entrée

- module\_path - chaîne : chemin racine d'un module. Le chemin doit exister.
- module\_short\_name - chaîne : nom court du module. Ce nom ne doit pas être déjà utilisé.

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

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
