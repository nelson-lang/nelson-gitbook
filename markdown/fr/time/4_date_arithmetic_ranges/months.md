# months

Renvoie les mois calendaires entiers entre deux dates.

## 📝 Syntaxe

- m = months(t1, t2)

## 📥 Argument d'entrée

- inputs - Deux entrees datetime ou compatibles date avec tailles identiques ou expansion scalaire.

## 📤 Argument de sortie

- output - Un tableau double de nombres de mois entiers.

## 📄 Description

Renvoie les mois calendaires entiers entre deux dates.

Le resultat compte les mois calendaires complets et ajuste lorsque le jour du second argument precede le premier.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
months(datetime(2024, 1, 31), datetime(2024, 3, 30))

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
