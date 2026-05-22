# cmdsep

Séparateur de commande pour le système d'exploitation courant.

## 📝 Syntaxe

- sep = cmdsep()

## 📤 Argument de sortie

- sep - une chaîne : sous Windows " & & ", sous Linux ";"

## 📄 Description

<b>cmdsep</b> retourne le séparateur de commande pour le système d'exploitation courant.

Cette fonction est utilisée par Nelson pour construire des lignes de commande pour les systèmes Unix et DOS.

## 💡 Exemple

```matlab
unix("cd c:/ " + cmdsep() + " nelson")
```

## 🔗 Voir aussi

[unix](../os_functions/unix.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.11.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
