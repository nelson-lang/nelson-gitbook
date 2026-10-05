# buildhelpmd

Génère l'aide des modules de Nelson pour GitBook.

## 📝 Syntaxe

- buildhelpmd(dirdest)
- buildhelpmd(dirdest, module\_name)

## 📥 Argument d'entrée

- dirdest - a string: a path destination.
- module\_name - une chaîne : nom du module (le module doit être chargé).

## 📄 Description


<b>buildhelpmd</b> génère des fichiers d'aide pour GitBook (markdown).

## 💡 Exemple



```matlab
buildhelpmd(tempdir());
buildhelpmd(tempdir(), 'core');
```


## 🔗 Voir aussi

[buildhelp](../help_tools/buildhelp.md), [doc](../help_tools/doc.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
