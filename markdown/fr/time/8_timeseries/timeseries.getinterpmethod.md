# timeseries.getinterpmethod

Renvoie le nom de la methode d'interpolation.

## 📝 Syntaxe

- method = getinterpmethod(ts)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.

## 📤 Argument de sortie

- method - Nom de la methode d'interpolation.

## 📄 Description


<b>getinterpmethod</b> Lit la methode d'interpolation stockee dans ts.DataInfo.Interpolation.

## 💡 Exemple


```matlab
ts = timeseries([1; 2; 3]);
ts = setinterpmethod(ts, 'nearest');
getinterpmethod(ts)

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
