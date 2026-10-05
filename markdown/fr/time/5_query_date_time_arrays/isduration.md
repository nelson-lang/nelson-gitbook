# isduration

Teste si une entree est un tableau duration.

## 📝 Syntaxe

- tf = isduration(A)

## 📥 Argument d'entrée

- inputs - Toute valeur Nelson.

## 📤 Argument de sortie

- output - Un scalaire logique.

## 📄 Description


Teste si une entree est un tableau duration. 

Utilisez isduration avant de convertir un temps ecoule avec seconds, minutes, hours, days ou years. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
isduration(seconds(10))
isduration(datetime(2024,1,1))

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
