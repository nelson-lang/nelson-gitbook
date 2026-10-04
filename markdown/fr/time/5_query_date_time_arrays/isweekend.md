# isweekend

Teste si des dates tombent un samedi ou un dimanche.

## 📝 Syntaxe

- tf = isweekend(t)

## 📥 Argument d'entrée

- inputs - Valeurs datetime, numeros de date serie ou entrees compatibles date.

## 📤 Argument de sortie

- output - Un tableau logique.

## 📄 Description

Teste si des dates tombent un samedi ou un dimanche.

isweekend utilise la numerotation weekday ou dimanche et samedi sont des jours de weekend.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
isweekend(datetime(2024, 6, 8))
isweekend(datetime(2024, 6, 10))

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
