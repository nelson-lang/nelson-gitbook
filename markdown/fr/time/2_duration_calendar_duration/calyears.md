# calyears

Cree des durees calendaires contenant des annees calendaires.

## 📝 Syntaxe

- c = calyears(x)

## 📥 Argument d'entrée

- inputs - Nombres numeriques d annees calendaires.

## 📤 Argument de sortie

- output - Un tableau calendarDuration dont les annees sont stockees en mois.

## 📄 Description


Cree des durees calendaires contenant des annees calendaires. 

calyears sert a l arithmetique calendaire, pas a une conversion fixe de temps ecoule. Ajouter calyears a datetime preserve le comportement de fin de mois. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
datetime(2024, 2, 29) + calyears(1)

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
