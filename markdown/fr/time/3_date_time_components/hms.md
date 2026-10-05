# hms

Separe les valeurs datetime ou duration en heures, minutes et secondes.

## 📝 Syntaxe

- [h, m, s] = hms(t)

## 📥 Argument d'entrée

- inputs - Entree datetime, duration, numero de date serie ou compatible date.

## 📤 Argument de sortie

- output - Trois tableaux double contenant heures, minutes et secondes.

## 📄 Description


Separe les valeurs datetime ou duration en heures, minutes et secondes. 

Pour une entree duration, la partie heures peut depasser 23 car elle represente des heures ecoulees. Pour datetime, elle represente l heure du jour. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
[h, m, s] = hms(duration(27, 5, 6))
[h, m, s] = hms(datetime(2024, 5, 17, 13, 14, 15))

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
