#import "nelson_help.typ": *

= writetimetable <spreadsheet:writetimetable>

Écrit une timetable dans un fichier.

== Syntaxe

- #raw("writetimetable(TT)");
- #raw("writetimetable(TT, filename)");
- #raw("writetimetable(..., Name, Value)");

== Argument d'entrée

/ TT: une timetable.
/ filename: une chaîne indiquant le fichier destination.
/ Name, Value: paramètres d'écriture optionnels tels que Delimiter, WriteVariableNames, WriteMode, QuoteStrings et FileType.

== Description

#strong[writetimetable]; écrit une timetable dans un fichier texte délimité.

 Les temps de ligne sont écrits comme première colonne. Les variables de données sont écrites ensuite et conservent leurs noms.

 Les options de fichier texte prises en charge correspondent à la surface pratique de #strong[writetable];, dont #strong[Delimiter];, #strong[WriteVariableNames];, #strong[WriteMode]; et #strong[QuoteStrings];.

 Les temps de ligne datetime et duration sont convertis en texte stable avant l'écriture. Le fichier texte délimité obtenu peut être relu avec #strong[readtimetable];.

 #strong[Fichiers JSON]; (extension #strong[.json]; ou #strong['FileType', 'json'];) : la timetable est écrite comme un tableau JSON avec un objet par ligne. Les temps de ligne sont la première valeur de chaque objet, avec pour clé le premier nom de dimension. #strong[PrettyPrint]; et #strong[PreserveInfAndNaN]; se comportent comme dans #strong[writetable];.


== Exemples

Écrire une timetable et la relire.

``````matlab

Time = datetime(2026, 1, 1) + hours(0:2)';
Temperature = [20.1; 21.3; 22.0];
Pressure = [1012; 1011; 1013];
TT1 = timetable(Time, Temperature, Pressure, ...
  'VariableNames', {'Temperature', 'Pressure'});
filename = [tempdir(), 'writetimetable_roundtrip.csv'];
writetimetable(TT1, filename);
TT2 = readtimetable(filename)

``````

Utiliser un séparateur point-virgule.

``````matlab

Time = datetime(2026, 1, 1) + days(0:2)';
Temperature = [20.1; 21.3; 22.0];
TT = timetable(Time, Temperature);
filename = [tempdir(), 'writetimetable_semicolon.csv'];
writetimetable(TT, filename, 'Delimiter', ';');
fileread(filename)

``````

Écrire des temps de ligne duration.

``````matlab

Time = seconds([0; 5; 10]);
Signal = [3.2; 4.1; 3.8];
TT = timetable(Time, Signal);
filename = [tempdir(), 'writetimetable_duration.csv'];
writetimetable(TT, filename);
fileread(filename)

``````

Ajouter des lignes à un fichier texte existant.

``````matlab

Time1 = datetime(2026, 1, 1) + hours(0:1)';
Value1 = [10; 11];
TT1 = timetable(Time1, Value1, 'VariableNames', {'Value'});
Time2 = datetime(2026, 1, 1) + hours(2:3)';
Value2 = [12; 13];
TT2 = timetable(Time2, Value2, 'VariableNames', {'Value'});
filename = [tempdir(), 'writetimetable_append.csv'];
writetimetable(TT1, filename);
writetimetable(TT2, filename, 'WriteMode', 'append', 'WriteVariableNames', false);
readtimetable(filename)

``````

Écrire une timetable dans un fichier JSON :

``````matlab
TT = timetable(datetime(2024, 1, 1) + days(0:2)', [12.5; 13; 11.75], 'VariableNames', {'Temperature'}); f = [tempdir, 'timetable_json.json']; writetimetable(TT, f, 'PrettyPrint', false); fileread(f) TT2 = readtimetable(f)
``````


== Voir aussi

#nlink(<spreadsheet:readtimetable>)[readtimetable];, #nlink(<spreadsheet:writetable>)[writetable];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [Fichiers JSON : FileType json, PrettyPrint et PreserveInfAndNaN.],
)

// Auteur: Allan CORNET
