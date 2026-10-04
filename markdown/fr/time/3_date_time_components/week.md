# week

Calcule les numeros de semaine dans l annee calendaire.

## 📝 Syntaxe

- w = week(t)

## 📥 Argument d'entrée

- inputs - Valeurs datetime, numeros de date serie ou entrees compatibles date.

## 📤 Argument de sortie

- output - Un tableau double de numeros de semaine commencant a 1.

## 📄 Description

Calcule les numeros de semaine dans l annee calendaire.

L implementation compte des blocs de sept jours depuis le 1 janvier de chaque annee.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
week(datetime(2024, 1, 1))
week(datetime(2024, 1, 8))

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
