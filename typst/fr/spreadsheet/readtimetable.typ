#import "nelson_help.typ": *

= readtimetable <spreadsheet:readtimetable>

Crée une timetable depuis un fichier.

== Syntaxe

- #raw("TT = readtimetable(filename)");
- #raw("TT = readtimetable(filename, opts)");
- #raw("TT = readtimetable(..., Name, Value)");

== Argument d'entrée

/ filename: une chaîne : fichier source.
/ opts: objet nelson.io.text.DelimitedTextImportOptions.
/ Name, Value: paires optionnelles telles que RowTimes, StartTime, TimeStep, SampleRate, InputFormat et les options d'import texte partagées avec readtable.

== Argument de sortie

/ TT: une timetable.

== Description

#strong[readtimetable]; importe des données texte délimitées en colonnes et retourne une timetable.

 Les temps de ligne peuvent être sélectionnés avec #strong[RowTimes]; et un nom de variable, fournis avec #strong[RowTimes]; et un vecteur temporel, générés avec #strong[StartTime]; et #strong[SampleRate];, ou générés avec #strong[StartTime]; et #strong[TimeStep];.

 Si aucune option de temps de ligne n'est fournie, la première variable compatible datetime ou duration est utilisée comme temps de ligne.

 Lorsqu'une colonne du fichier est utilisée comme temps de ligne, cette colonne est retirée des variables de données de la timetable. Lorsque les temps de ligne sont fournis ou générés, toutes les variables du fichier restent des variables de données.

 Les fichiers texte délimités sont pris en charge. Les formats externes non pris en charge émettent une erreur.

 Les #strong[fichiers JSON]; (extension #strong[.json]; ou #strong['FileType', 'json'];) sont lus comme avec #strong[readtable];, avec les mêmes arguments nom-valeur JSON ou un objet #strong[nelson.io.json.JSONImportOptions];. La première variable datetime ou duration donne les temps de ligne, sauf si une option de temps de ligne est indiquée.


== Exemples

Lire un fichier et détecter automatiquement la première colonne de temps.

``````matlab

Time = {'2024-01-01'; '2024-01-02'; '2024-01-03'};
Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Time, Temperature, Pressure);
filename = [tempdir(), 'readtimetable_auto.csv'];
writetable(T, filename);
TT = readtimetable(filename)
TT.Properties.RowTimes

``````

Sélectionner la colonne de temps par son nom.

``````matlab

Date = {'2024-01-01'; '2024-01-02'; '2024-01-03'};
Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Date, Temperature, Pressure);
filename = [tempdir(), 'readtimetable_timevariable.csv'];
writetable(T, filename);
TT = readtimetable(filename, 'RowTimes', 'Date')
TT.Properties.VariableNames

``````

Fournir les temps de ligne explicitement.

``````matlab

Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Temperature, Pressure);
filename = [tempdir(), 'readtimetable_rowtimes.csv'];
writetable(T, filename);
rowTimes = seconds([10; 20; 30]);
TT = readtimetable(filename, 'RowTimes', rowTimes)
TT.Properties.RowTimes

``````

Générer des temps de ligne réguliers avec StartTime et SampleRate.

``````matlab

Temperature = [12.5; 13.0; 11.75; 12.25];
T = table(Temperature);
filename = [tempdir(), 'readtimetable_samplerate.csv'];
writetable(T, filename);
TT = readtimetable(filename, 'StartTime', seconds(0), 'SampleRate', 0.5)
TT.Properties.RowTimes

``````

Lire un fichier JSON en timetable :

``````matlab
TT = timetable(datetime(2024, 1, 1) + days(0:2)', [12.5; 13; 11.75], 'VariableNames', {'Temperature'}); f = [tempdir, 'timetable_json.json']; writetimetable(TT, f, 'PrettyPrint', false); fileread(f) TT2 = readtimetable(f)
``````


== Voir aussi

#nlink(<spreadsheet:readtable>)[readtable];, #nlink(<spreadsheet:writetimetable>)[writetimetable];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];, #nlink(<spreadsheet:jsonImportOptions>)[jsonImportOptions];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [Fichiers JSON : lecture de données JSON sous forme de timetable.],
)

// Auteur: Allan CORNET
