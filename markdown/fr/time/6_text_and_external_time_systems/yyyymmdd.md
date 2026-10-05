# yyyymmdd

Convertit des dates en nombres calendaires yyyymmdd.

## 📝 Syntaxe

- n = yyyymmdd(t)

## 📥 Argument d'entrée

- inputs - Valeurs datetime, numeros de date serie ou entrees compatibles date.

## 📤 Argument de sortie

- output - Un tableau double ou chaque date vaut annee\*10000 + mois\*100 + jour.

## 📄 Description


Convertit des dates en nombres calendaires yyyymmdd. 

yyyymmdd est utile pour des cles de date compactes et triables lorsque l heure n est pas necessaire. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
yyyymmdd(datetime(2024, 5, 17))

```


## 🔗 Voir aussi

[datetime](../../time/1_create_date_time_arrays/datetime.md), [duration](../../time/2_duration_calendar_duration/duration.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
