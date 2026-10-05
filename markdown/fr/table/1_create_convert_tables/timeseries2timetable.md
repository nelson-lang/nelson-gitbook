# timeseries2timetable

Convertir des donnees de serie temporelle en timetable.

## 📝 Syntaxe

- TT = timeseries2timetable(ts)
- TT = timeseries2timetable(ts1, ..., tsN)
- TT = timeseries2timetable(tsArray)

## 📥 Argument d'entrée

- ts - Donnees de serie temporelle.
- ts1, ..., tsN - Series temporelles partageant le meme vecteur de temps, les memes TimeInfo Units et TimeInfo StartDate.
- tsArray - Tableau non vide de series temporelles, converti dans l'ordre des colonnes. Il doit etre la seule entree.

## 📤 Argument de sortie

- TT - Objet timetable.

## 📄 Description


<b>timeseries2timetable</b> convertit un objet timeseries en timetable. 

Les temps numeriques relatifs deviennent des durees. Les metadonnees de temps absolu deviennent des temps datetime. 

Chaque serie temporelle devient une variable, nommee d'apres la propriete <b>Name</b> de la serie, ou <b>Data</b> si elle est vide. Les noms en double sont rendus uniques. Pour combiner des series ayant des vecteurs de temps differents, convertissez-les separement puis utilisez <b>synchronize</b>.

## 💡 Exemple


```matlab
ts = timeseries([1; 2; 3], [0; 1; 2], 'Name', 'speed');
TT = timeseries2timetable(ts)

```


## 🔗 Voir aussi

[timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
