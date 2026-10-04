# istimetable

Determiner si l'entree est une timetable.

## 📝 Syntaxe

- tf = istimetable(A)

## 📥 Argument d'entrée

- A - Tableau d'entree.

## 📤 Argument de sortie

- tf - Scalaire logique.

## 📄 Description

<b>istimetable(A)</b> renvoie vrai quand <b>A</b> est une timetable.

## 💡 Exemple

```matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT = timetable(t, [1; 2]);
istimetable(TT)
```

## 🔗 Voir aussi

[timetable](../../table/timetable.md), [istabular](../../table/istabular.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
