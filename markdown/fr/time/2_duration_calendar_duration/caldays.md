# caldays

Cree des durees calendaires contenant des jours entiers.

## 📝 Syntaxe

- c = caldays(x)

## 📥 Argument d'entrée

- inputs - Nombres numeriques de jours.

## 📤 Argument de sortie

- output - Un tableau calendarDuration avec composants jours.

## 📄 Description

Cree des durees calendaires contenant des jours entiers.

caldays stocke les valeurs dans le composant jours de calendarDuration. Pour des durees fixes de 24 heures ecoulees, utilisez days.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
datetime(2024, 1, 1) + caldays(3)

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
