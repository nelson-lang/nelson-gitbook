# NaT

Cree des valeurs datetime not-a-time.

## 📝 Syntaxe

- t = NaT()
- t = NaT(n)
- t = NaT(m, n)
- t = NaT(..., 'Format', fmt)
- t = NaT(..., 'TimeZone', tz)

## 📥 Argument d'entrée

- inputs - Arguments de taille optionnels et paires nom-valeur Format et TimeZone optionnelles.

## 📤 Argument de sortie

- output - Un tableau datetime dont les valeurs serie sont NaN.

## 📄 Description


Cree des valeurs datetime not-a-time. 

NaT est le marqueur de valeur manquante pour les tableaux datetime. isnat renvoie true pour ces elements et les fonctions d affichage les montrent comme NaT. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
t = NaT(2, 3)
isnat(t)

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
