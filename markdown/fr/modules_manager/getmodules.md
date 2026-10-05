# getmodules

Renvoie la liste des modules chargés dans Nelson.

## 📝 Syntaxe

- modules\_name = getmodules()
- [modules\_name, modules\_root\_path, modules\_version, modules\_protected] = getmodules()

## 📤 Argument de sortie

- modules\_name - cellule de chaînes : noms des modules.
- modules\_root\_path - cellule de chaînes : chemins des modules.
- modules\_version - cellule de vecteurs : [major, minor, patch].
- modules\_protected - vecteur logique : true si le module peut être supprimé, sinon false.

## 📄 Description


<b>getmodules</b> renvoie la liste des modules chargés dans Nelson. 

Tous les modules du cœur sont protégés et ne peuvent pas être supprimés pendant une session Nelson.

## 💡 Exemple



```matlab
[modules_name, modules_root_path, modules_version, modules_protected] = getmodules()
```


## 🔗 Voir aussi

[requiremodule](../modules_manager/requiremodule.md), [ismodule](../modules_manager/ismodule.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
