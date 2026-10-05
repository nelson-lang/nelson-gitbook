# eomdate

Renvoie le numero de date serie du dernier jour d un mois.

## 📝 Syntaxe

- d = eomdate(y, m)

## 📥 Argument d'entrée

- inputs - Nombres d annees et de mois. Les tableaux sont supportes lorsque les tailles sont compatibles avec datenum et eomday.

## 📤 Argument de sortie

- output - Un numero de date serie pour la fin de chaque mois demande.

## 📄 Description


Renvoie le numero de date serie du dernier jour d un mois. 

eomdate combine eomday avec datenum et renvoie des dates plutot que des numeros de jours. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
eomdate(2024, 2)
datestr(eomdate(2024, 2))

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
