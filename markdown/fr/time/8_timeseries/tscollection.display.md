# tscollection.display

Affiche un objet tscollection.

## 📝 Syntaxe

- display(tsc)

## 📥 Argument d'entrée

- tsc - Un objet tscollection.

## 📄 Description


<b>display</b> affiche les limites temporelles de la collection et les noms des series membres.

## 💡 Exemple


```matlab
count1 = timeseries([11; 7; 14], (1:3)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12], (1:3)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
display(tsc)

```


## 🔗 Voir aussi

[tscollection](../../time/8_timeseries/tscollection.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
