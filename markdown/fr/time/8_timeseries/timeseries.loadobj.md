# timeseries.loadobj

Restaure un objet timeseries depuis des donnees sauvegardees.

## 📝 Syntaxe

- ts = timeseries.loadobj(value)

## 📥 Argument d'entrée

- value - Un objet timeseries ou une structure contenant les champs de stockage timeseries.

## 📤 Argument de sortie

- ts - Un objet timeseries.

## 📄 Description

<b>timeseries.loadobj</b> reconstruit un objet timeseries depuis un objet ou une structure sauvegardee.

## 💡 Exemple

```matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
state = struct(ts);
copy = timeseries.loadobj(state);
copy.Name

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
