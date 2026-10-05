# timeseries.getqualitydesc

Renvoie les descriptions de qualite pour les codes de qualite.

## 📝 Syntaxe

- desc = getqualitydesc(ts, codes)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- codes - Codes de qualite a decrire.

## 📤 Argument de sortie

- desc - Descriptions des codes de qualite.

## 📄 Description


<b>getqualitydesc</b> Recherche les descriptions des codes de qualite dans ts.QualityInfo.

## 💡 Exemple


```matlab
ts = timeseries([1; 2], [1; 2]);
ts.QualityInfo = tsdata.qualmetadata('Code', [0 1], 'Description', {'ok', 'bad'});
getqualitydesc(ts, [0 1])

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
