# calendarDuration

Cree des durees calendaires avec composants mois, jours et temps.

## 📝 Syntaxe

- c = calendarDuration(y, mo, d)
- c = calendarDuration(y, mo, d, h, mi, s)
- c = calendarDuration(x)

## 📥 Argument d'entrée

- inputs - Annees calendaires, mois, jours et composants horaires optionnels, ou tableaux numeriques.

## 📤 Argument de sortie

- output - Un tableau calendarDuration contenant mois, jours, secondes et format d affichage.

## 📄 Description

Cree des durees calendaires avec composants mois, jours et temps.

Les durees calendaires conservent la semantique calendrier lors des additions avec datetime. Les calculs par mois bornent les jours a la fin du mois si necessaire.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
c = calendarDuration(0, 1, 3)
t = datetime(2024, 1, 31) + c

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
