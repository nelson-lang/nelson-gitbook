# isregular

Determiner si les temps de lignes sont regulierement espaces.

## 📝 Syntaxe

- tf = isregular(TT)

## 📥 Argument d'entrée

- TT - Timetable d'entree.

## 📤 Argument de sortie

- tf - Scalaire logique.

## 📄 Description

<b>isregular</b> renvoie vrai quand toutes les differences entre temps adjacents sont egales.

## 💡 Exemple

```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
isregular(TT)

```

## 🔗 Voir aussi

[timetable](../../table/timetable.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
