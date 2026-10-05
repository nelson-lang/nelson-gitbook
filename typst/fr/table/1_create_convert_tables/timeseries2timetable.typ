#import "../nelson_help.typ": *

= timeseries2timetable <table:1_create_convert_tables.timeseries2timetable>

Convertir des donnees de serie temporelle en timetable.

== Syntaxe

- #raw("TT = timeseries2timetable(ts)");
- #raw("TT = timeseries2timetable(ts1, ..., tsN)");
- #raw("TT = timeseries2timetable(tsArray)");

== Argument d'entrée

/ ts: Donnees de serie temporelle.
/ ts1, ..., tsN: Series temporelles partageant le meme vecteur de temps, les memes TimeInfo Units et TimeInfo StartDate.
/ tsArray: Tableau non vide de series temporelles, converti dans l'ordre des colonnes. Il doit etre la seule entree.

== Argument de sortie

/ TT: Objet timetable.

== Description

#strong[timeseries2timetable]; convertit un objet timeseries en timetable.

 Les temps numeriques relatifs deviennent des durees. Les metadonnees de temps absolu deviennent des temps datetime.

 Chaque serie temporelle devient une variable, nommee d'apres la propriete #strong[Name]; de la serie, ou #strong[Data]; si elle est vide. Les noms en double sont rendus uniques. Pour combiner des series ayant des vecteurs de temps differents, convertissez-les separement puis utilisez #strong[synchronize];.


== Exemple

``````matlab
ts = timeseries([1; 2; 3], [0; 1; 2], 'Name', 'speed');
TT = timeseries2timetable(ts)

``````


== Voir aussi

#nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
