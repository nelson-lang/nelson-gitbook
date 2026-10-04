# lweekdate

Renvoie le dernier jour de semaine selectionne dans un mois.

## 📝 Syntaxe

- d = lweekdate(weekdayNumber, yearNumber, monthNumber)

## 📥 Argument d'entrée

- inputs - Numero de jour de semaine, annee et mois.

## 📤 Argument de sortie

- output - Un numero de date serie.

## 📄 Description

Renvoie le dernier jour de semaine selectionne dans un mois.

Les numeros de jours suivent weekday. La fonction part de la fin du mois et recule jusqu au jour demande.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
datestr(lweekdate(6, 2024, 5))

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
