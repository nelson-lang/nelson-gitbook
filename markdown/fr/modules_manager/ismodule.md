# ismodule

Vérifie si un module est chargé.

## 📝 Syntaxe

- state = ismodule(module\_short\_name)
- state = ismodule(module\_short\_name, 'isprotected')

## 📥 Argument d'entrée

- module\_short\_name - chaîne : nom court du module à tester.
- 'isprotected' - vérifie si le module est protégé (c.-à-d. module interne).

## 📤 Argument de sortie

- state - a logical.

## 📄 Description


<b>ismodule</b> retourne <b>true</b> si le module est chargé, sinon <b>false</b>.

## 💡 Exemple



```matlab
ismodule('core')
ismodule('mymodule')
```


## 🔗 Voir aussi

[requiremodule](../modules_manager/requiremodule.md), [getmodules](../modules_manager/getmodules.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 1.11.0   | 
        'isprotected' second argument. |

<!--
## 👤 Auteur

Allan CORNET
-->
