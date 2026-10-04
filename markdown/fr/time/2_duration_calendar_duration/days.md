# days

Cree des durees depuis des jours ou convertit des durees en jours.

## 📝 Syntaxe

- d = days(x)
- x = days(d)

## 📥 Argument d'entrée

- inputs - Nombres de jours numeriques ou tableaux duration.

## 📤 Argument de sortie

- output - Un tableau duration pour une entree numerique, ou des nombres de jours double pour une entree duration.

## 📄 Description

Cree des durees depuis des jours ou convertit des durees en jours.

days represente des periodes ecoulees de 24 heures. Pour une arithmetique calendaire en calendarDuration, utilisez caldays.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
d = days([1 2])
seconds(d)
days(hours(48))

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
