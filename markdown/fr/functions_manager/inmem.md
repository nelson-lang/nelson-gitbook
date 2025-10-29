# inmem

Noms des fonctions, fichiers MEX.

## 📝 Syntaxe

- F = inmem()
- [F, M] = inmem()
- F = inmem('-completenames')
- [F, M] = inmem('-completenames')

## 📥 Argument d'entrée

- '-completenames' - une chaîne : nom de fonction mex.

## 📤 Argument de sortie

- F - tableau de cellules de vecteurs de caractères contenant les noms des macros chargées.
- M - tableau de cellules de vecteurs de caractères contenant les noms des mex chargés.

## 📄 Description

<b>inmem</b> retourne un tableau de cellules des noms des fonctions et mex actuellement chargés.

## 💡 Exemple

```matlab
clear all
tand(3)
inmem()
inmem('-completenames')

```

## 🔗 Voir aussi

[clear](../memory_manager/clear.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
