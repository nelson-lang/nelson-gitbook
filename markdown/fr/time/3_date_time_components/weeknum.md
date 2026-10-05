# weeknum

Renvoie les numeros de semaine dans l annee calendaire.

## 📝 Syntaxe

- w = weeknum(t)

## 📥 Argument d'entrée

- inputs - Valeurs datetime, numeros de date serie ou entrees compatibles date.

## 📤 Argument de sortie

- output - Un tableau double de numeros de semaine.

## 📄 Description


Renvoie les numeros de semaine dans l annee calendaire. 

weeknum est un wrapper de style alias autour de week pour compatibilite avec le code utilisant ce nom. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
weeknum(datetime(2024, 1, 8))

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
