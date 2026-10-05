# between

Renvoie des durees calendaires entre deux valeurs datetime.

## 📝 Syntaxe

- c = between(t1, t2)
- c = between(t1, t2, components)

## 📥 Argument d'entrée

- inputs - Deux entrees datetime ou compatibles date et un selecteur optionnel comme years, quarters, months ou days.

## 📤 Argument de sortie

- output - Un tableau calendarDuration.

## 📄 Description


Renvoie des durees calendaires entre deux valeurs datetime. 

between exprime l intervalle avec des composants calendaires entiers et des restes jours/temps. La fonction supporte l expansion scalaire entre les bornes. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
c = between(datetime(2024, 1, 15), datetime(2024, 3, 20))
split(c, 'months')
split(c, 'days')

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
