# day

Extrait les informations de jour de valeurs de date et heure.

## 📝 Syntaxe

- d = day(t)
- d = day(t, 'dayofmonth')
- d = day(t, 'dayofyear')
- name = day(t, 'name')
- abbr = day(t, 'shortname')

## 📥 Argument d'entrée

- inputs - Valeurs datetime, numeros de date serie ou entrees compatibles date, avec selecteur de jour optionnel.

## 📤 Argument de sortie

- output - Un tableau double de jours ou un tableau string de noms de jours.

## 📄 Description

Extrait les informations de jour de valeurs de date et heure.

La valeur par defaut est le jour du mois. dayofyear compte depuis le 1 janvier. name et shortname renvoient les noms de jours.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
t = datetime(2024, 2, 29)
day(t)
day(t, 'dayofyear')

```

## 🔗 Voir aussi

[datetime](../../time/datetime.md), [duration](../../time/duration.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
