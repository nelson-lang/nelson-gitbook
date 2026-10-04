# convertTo

Convertit des valeurs datetime vers des representations numeriques choisies.

## 📝 Syntaxe

- x = convertTo(t, 'datenum')
- x = convertTo(t, 'posixtime')
- x = convertTo(t, 'juliandate')
- x = convertTo(t, 'exceltime')
- x = convertTo(t, 'yyyymmdd')

## 📥 Argument d'entrée

- inputs - Un tableau datetime et un type de conversion.

## 📤 Argument de sortie

- output - Un tableau numerique correspondant a la representation demandee.

## 📄 Description

Convertit des valeurs datetime vers des representations numeriques choisies.

convertTo regroupe les conversions datetime aussi disponibles via datenum, posixtime, juliandate, exceltime et yyyymmdd.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
t = datetime(2024, 5, 17)
convertTo(t, 'yyyymmdd')

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
