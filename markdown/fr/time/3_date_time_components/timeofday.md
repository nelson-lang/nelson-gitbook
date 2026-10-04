# timeofday

Renvoie le temps ecoule depuis minuit pour des valeurs datetime.

## 📝 Syntaxe

- d = timeofday(t)

## 📥 Argument d'entrée

- inputs - Un tableau datetime.

## 📤 Argument de sortie

- output - Un tableau duration contenant le composant horaire du jour.

## 📄 Description

Renvoie le temps ecoule depuis minuit pour des valeurs datetime.

timeofday ignore la date calendaire et conserve seulement la fraction du jour, exprimee comme duration au format hh:mm:ss.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
d = timeofday(datetime(2024, 1, 1, 12, 30, 0))
seconds(d)

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
