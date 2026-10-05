# tzoffset

Renvoie les decalages UTC pour des valeurs datetime avec fuseau horaire.

## 📝 Syntaxe

- d = tzoffset(t)

## 📥 Argument d'entrée

- inputs - Un tableau datetime dont TimeZone est vide, un decalage fixe, local ou un nom de fuseau supporte.

## 📤 Argument de sortie

- output - Un tableau duration contenant les decalages par rapport a UTC.

## 📄 Description


Renvoie les decalages UTC pour des valeurs datetime avec fuseau horaire. 

Les decalages de fuseaux nommes sont lus depuis la base timezone embarquee. Les decalages fixes comme +02:30 sont analyses directement. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
tzoffset(datetime(2024, 7, 1, 'TimeZone', 'Europe/Paris'))
tzoffset(datetime(2024, 1, 1, 'TimeZone', '+02:30'))

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
