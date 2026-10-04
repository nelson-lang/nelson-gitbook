# tscollection

Cree une collection de series temporelles alignees.

## 📝 Syntaxe

- tsc = tscollection(time)
- tsc = tscollection(ts)
- tsc = tscollection({ts1; ts2; ...})
- tsc = tscollection(..., 'Name', name)

## 📥 Argument d'entrée

- time - Vecteur de temps partage.
- ts - Membre timeseries initial.
- {ts1; ts2; ...} - Tableau cellulaire de membres timeseries.

## 📤 Argument de sortie

- tsc - Un objet tscollection.

## 📄 Description

<b>tscollection</b> groupe des objets timeseries nommes sur un vecteur de temps commun.

Les membres peuvent etre ajoutes, supprimes, reechantillonnes, selectionnes par temps et consultes par nom.

## 💡 Exemples

```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12; 16], (1:4)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
gettimeseriesnames(tsc)

```

```matlab
ts1 = timeseries([1.1 2.9 3.7 4.0 3.0]', 1:5, 'Name', 'Acceleration');
ts2 = timeseries([3.2 4.2 6.2 8.5 1.1]', 1:5, 'Name', 'Speed');
tsc = tscollection({ts1; ts2});
gettimeseriesnames(tsc)

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
