# iscalendarduration

Teste si une entree est un tableau calendarDuration.

## 📝 Syntaxe

- tf = iscalendarduration(A)

## 📥 Argument d'entrée

- inputs - Toute valeur Nelson.

## 📤 Argument de sortie

- output - Un scalaire logique.

## 📄 Description

Teste si une entree est un tableau calendarDuration.

Les durees calendaires representent des mois calendaires, jours et secondes. Ce predicat les distingue des tableaux duration de temps ecoule.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
iscalendarduration(calmonths(2))
iscalendarduration(days(2))

```

## 🔗 Voir aussi

[datetime](../../time/datetime.md), [duration](../../time/duration.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
