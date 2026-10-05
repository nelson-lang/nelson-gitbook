# dateshift

Decale des valeurs datetime vers des bornes calendaires ou jours de semaine choisis.

## 📝 Syntaxe

- t2 = dateshift(t, 'start', unit)
- t2 = dateshift(t, 'end', unit)
- t2 = dateshift(t, 'start', unit, rule)
- t2 = dateshift(t, 'dayofweek', day, rule)

## 📥 Argument d'entrée

- inputs - Un tableau datetime, un mode de decalage, une unite ou un jour de semaine, et une regle optionnelle.

## 📤 Argument de sortie

- output - Un tableau datetime decale selon la regle choisie.

## 📄 Description


Decale des valeurs datetime vers des bornes calendaires ou jours de semaine choisis. 

Les unites de borne incluent year, quarter, month, week, day, hour, minute et second. Le decalage par jour accepte noms, numeros, weekday et weekend. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
t = datetime(2024, 5, 17, 13, 14, 15)
dateshift(t, 'start', 'month')
dateshift(t, 'dayofweek', 'Monday', 'next')

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
