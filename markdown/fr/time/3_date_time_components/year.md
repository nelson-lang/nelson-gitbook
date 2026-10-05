# year

Extrait les annees de valeurs de date et heure.

## 📝 Syntaxe

- y = year(t)

## 📥 Argument d'entrée

- inputs - Valeurs datetime, numeros de date serie ou entrees compatibles date.

## 📤 Argument de sortie

- output - Un tableau double d annees calendaires.

## 📄 Description


Extrait les annees de valeurs de date et heure. 

year utilise datevec pour les dates numeriques et la propriete dependante Year pour les entrees datetime. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
t = datetime(2024, [1 12], [1 31])
year(t)

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
