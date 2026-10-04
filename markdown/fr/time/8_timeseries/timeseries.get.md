# timeseries.get

Obtient la valeur d'une propriété d'un timeseries.

## 📝 Syntaxe

- value = get(ts, 'PropertyName')
- values = get(ts)

## 📥 Argument d'entrée

- ts - Objet timeseries.
- PropertyName - Nom de la propriété à interroger, telle que Name, Data, Time, DataInfo ou Events.

## 📤 Argument de sortie

- value - Valeur de la propriété demandée.
- values - Structure contenant les valeurs des propriétés publiques.

## 📄 Description

<b>get</b> retourne la valeur d'une propriété nommée d'un timeseries. Appeler get avec uniquement l'objet retourne l'ensemble des propriétés publiques.

## 💡 Exemple

```matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
name = get(ts, 'Name')
time = get(ts, 'Time')

```

## 🔗 Voir aussi

[timeseries](../../time/timeseries.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
