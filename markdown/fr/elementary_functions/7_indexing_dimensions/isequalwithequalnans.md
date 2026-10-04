# isequalwithequalnans

Compare des tableaux en considerant les valeurs NaN comme egales.

## 📝 Syntaxe

- tf = isequalwithequalnans(A, B)
- tf = isequalwithequalnans(A1, A2, ...)

## 📥 Argument d'entrée

- A - Tableau d'entree.

## 📤 Argument de sortie

- tf - Scalaire logique.

## 📄 Description

<b>isequalwithequalnans</b> est equivalent a <b>isequaln</b>.

## 💡 Exemple

```matlab
tf = isequalwithequalnans([NaN 1], [NaN 1])
```

## 🔗 Voir aussi

[isequaln](../../elementary_functions/isequaln.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
