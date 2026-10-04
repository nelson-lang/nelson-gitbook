# minutes

Cree des durees depuis des minutes ou convertit des durees en minutes.

## 📝 Syntaxe

- d = minutes(x)
- x = minutes(d)

## 📥 Argument d'entrée

- inputs - Nombres de minutes numeriques ou tableaux duration.

## 📤 Argument de sortie

- output - Un tableau duration pour une entree numerique, ou des nombres de minutes double pour une entree duration.

## 📄 Description

Cree des durees depuis des minutes ou convertit des durees en minutes.

minutes stocke le temps ecoule en secondes en interne et fournit une construction et extraction pratique en minutes.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
d = minutes([30 90])
seconds(d)
minutes(hours(2))

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
