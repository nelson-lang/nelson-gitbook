# timeseries.setinterpmethod

Definit la methode d'interpolation.

## 📝 Syntaxe

- tsOut = setinterpmethod(ts, method)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- method - Methode d'interpolation : linear, zoh ou nearest.

## 📤 Argument de sortie

- tsOut - Objet timeseries en sortie avec la methode d'interpolation definie.

## 📄 Description


<b>setinterpmethod</b> Met a jour ts.DataInfo.Interpolation avec la methode d'interpolation demandee.

## 💡 Exemple


```matlab
ts = timeseries([1; 2; 3]);
ts = setinterpmethod(ts, 'zoh');
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
