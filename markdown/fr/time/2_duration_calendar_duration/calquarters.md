# calquarters

Cree des durees calendaires contenant des trimestres calendaires.

## 📝 Syntaxe

- c = calquarters(x)

## 📥 Argument d'entrée

- inputs - Nombres numeriques de trimestres.

## 📤 Argument de sortie

- output - Un tableau calendarDuration avec chaque trimestre stocke comme trois mois.

## 📄 Description

Cree des durees calendaires contenant des trimestres calendaires.

Utilisez calquarters pour les decalages calendaires bases sur les mois. Cela differe de days ou duration car la longueur des mois varie.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
datetime(2024, 1, 31) + calquarters(1)

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
