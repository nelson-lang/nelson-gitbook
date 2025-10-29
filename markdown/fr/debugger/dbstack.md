# dbstack

Pile d'appels (call stack).

## 📝 Syntaxe

- dbstack
- st = dbstack()
- dbstack('-completenames')
- st = dbstack('-completenames')
- dbstack('-completenames', omit)
- st = dbstack('-completenames', omit)

## 📥 Argument d'entrée

- omit - un entier : nombre de trames à omettre (doit être positif).

## 📤 Argument de sortie

- st - une structure

## 📄 Description

<b>dbstack</b> affiche les noms de fichiers et les numéros de ligne des appels de fonctions.

<b>dbstack('-completenames')</b> affiche les chemins de fichiers complets.

## 💡 Exemple

Creates a myfun.m and calls it.

```matlab
function myfun(x)
dbstack();
end
```

## 🔗 Voir aussi

[which](../functions_manager/which.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
