# istable

Déterminer si l'entrée est une table.

## 📝 Syntaxe

- tf = istable(A)

## 📥 Argument d'entrée

- A - Tableau d'entrée.

## 📤 Argument de sortie

- tf - un logique : vrai si c'est une table.

## 📄 Description

<b>tf = istable(A)</b> renvoie <b>true</b> si <b>A</b> est une table, et <b>false</b> sinon.

## 💡 Exemple

```matlab
T = table();
istable(T)
M = magic(6);
istable(M)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [table](../table/table.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.8.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
