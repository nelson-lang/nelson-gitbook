# timeseries.set

Définit les valeurs des propriétés d'un timeseries.

## 📝 Syntaxe

- tsOut = set(ts, 'PropertyName', value)
- tsOut = set(ts, 'Name1', value1, 'Name2', value2)

## 📥 Argument d'entrée

- ts - Objet timeseries.
- PropertyName - Propriété à définir, telle que Name, Data, Time, DataInfo, TimeInfo ou UserData.
- value - Nouvelle valeur de la propriété.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie avec les propriétés mises à jour.

## 📄 Description

<b>set</b> retourne une copie de l'objet timeseries avec une ou plusieurs propriétés modifiées.

## 💡 Exemple

```matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
ts = set(ts, 'Name', 'velocity');
ts.Name

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
