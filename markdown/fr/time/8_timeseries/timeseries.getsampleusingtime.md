# timeseries.getsampleusingtime

Renvoie les echantillons selectionnes par temps.

## 📝 Syntaxe

- tsOut = getsampleusingtime(ts, t)
- tsOut = getsampleusingtime(ts, t1, t2)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- t - Temps exact de l'echantillon.
- t1 - Temps de debut.
- t2 - Temps de fin.

## 📤 Argument de sortie

- tsOut - Timeseries avec les echantillons selectionnes.

## 📄 Description


<b>getsampleusingtime</b> Selectionne des echantillons a des temps exacts ou dans un intervalle temporel ferme.

## 💡 Exemple


```matlab
ts = timeseries([10; 20; 30], [1; 2; 3]);
ts2 = getsampleusingtime(ts, 2, 3);
ts2.Data

```


## 🔗 Voir aussi

[timeseries](../../time/8_timeseries/timeseries.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
