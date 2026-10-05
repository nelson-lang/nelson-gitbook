# month

Extrait les numeros ou noms de mois de valeurs de date et heure.

## 📝 Syntaxe

- m = month(t)
- name = month(t, 'name')
- abbr = month(t, 'shortname')

## 📥 Argument d'entrée

- inputs - Valeurs datetime, numeros de date serie ou entrees compatibles date, avec selecteur optionnel de nom.

## 📤 Argument de sortie

- output - Un tableau double de numeros de mois, ou un tableau string de noms de mois.

## 📄 Description


Extrait les numeros ou noms de mois de valeurs de date et heure. 

Utilisez name pour les noms anglais complets et shortname pour les noms abreges. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
month(datetime(2024, 5, 17))
month(datetime(2024, 5, 17), 'name')

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
