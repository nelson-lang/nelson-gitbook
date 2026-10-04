# iscategorical

Determiner si un tableau est categoriel.

## 📝 Syntaxe

- tf = iscategorical(A)

## 📥 Argument d'entrée

- A - Valeur d'entree.

## 📤 Argument de sortie

- tf - Scalaire logique qui vaut <b>true</b> lorsque <b>A</b> est un tableau categoriel.

## 📄 Description

<b>iscategorical</b> verifie le type de stockage de son entree sans la modifier.

## 💡 Exemple

Tester un tableau categoriel.

```matlab
A = categorical({'red','blue'}); tf = iscategorical(A)
```

## 🔗 Voir aussi

[categorical](../categorical/categorical.md), [isordinal](../categorical/isordinal.md), [isprotected](../categorical/isprotected.md), [isundefined](../categorical/isundefined.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
