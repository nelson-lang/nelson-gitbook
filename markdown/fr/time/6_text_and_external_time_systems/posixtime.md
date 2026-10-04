# posixtime

Convertit des valeurs datetime en secondes ecoulees depuis l epoque POSIX.

## 📝 Syntaxe

- p = posixtime(t)

## 📥 Argument d'entrée

- inputs - Un tableau datetime.

## 📤 Argument de sortie

- output - Un tableau double de secondes ecoulees depuis 1970-01-01 00:00:00.

## 📄 Description

Convertit des valeurs datetime en secondes ecoulees depuis l epoque POSIX.

posixtime est utile pour echanger avec des systemes qui representent les temps comme secondes depuis l epoque Unix.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
posixtime(datetime(1970, 1, 1))
posixtime(datetime(1970, 1, 2))

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
