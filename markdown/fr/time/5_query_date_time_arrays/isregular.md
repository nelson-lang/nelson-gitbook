# isregular

Teste si des valeurs datetime sont regulierement espacees.

## 📝 Syntaxe

- tf = isregular(t)
- tf = isregular(t, unit)

## 📥 Argument d'entrée

- inputs - Un tableau datetime et un selecteur optionnel comme years, quarters, months, weeks ou days.

## 📤 Argument de sortie

- output - Un scalaire logique.

## 📄 Description


Teste si des valeurs datetime sont regulierement espacees. 

Sans unite, la regularite est testee sur les differences de dates serie. Avec une unite calendaire, la fonction compare les indices d unite. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
isregular(datetime(2024,1,1):days(1):datetime(2024,1,3))
isregular([datetime(2024,1,1), datetime(2024,2,1), datetime(2024,3,1)], 'months')

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
