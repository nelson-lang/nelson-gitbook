# readtimetable

Crée une timetable depuis un fichier.

## 📝 Syntaxe

- TT = readtimetable(filename)
- TT = readtimetable(filename, opts)
- TT = readtimetable(..., Name, Value)

## 📥 Argument d'entrée

- filename - une chaîne : fichier source.
- opts - objet nelson.io.text.DelimitedTextImportOptions.
- Name, Value - paires optionnelles telles que RowTimes, StartTime, TimeStep, SampleRate, InputFormat et les options d'import texte partagées avec readtable.

## 📤 Argument de sortie

- TT - une timetable.

## 📄 Description


<b>readtimetable</b> importe des données texte délimitées en colonnes et retourne une timetable. 

Les temps de ligne peuvent être sélectionnés avec <b>RowTimes</b> et un nom de variable, fournis avec <b>RowTimes</b> et un vecteur temporel, générés avec <b>StartTime</b> et <b>SampleRate</b>, ou générés avec <b>StartTime</b> et <b>TimeStep</b>. 

Si aucune option de temps de ligne n'est fournie, la première variable compatible datetime ou duration est utilisée comme temps de ligne. 

Lorsqu'une colonne du fichier est utilisée comme temps de ligne, cette colonne est retirée des variables de données de la timetable. Lorsque les temps de ligne sont fournis ou générés, toutes les variables du fichier restent des variables de données. 

Les fichiers texte délimités sont pris en charge. Les formats externes non pris en charge émettent une erreur. 

Les <b>fichiers JSON</b> (extension <b>.json</b> ou <b>'FileType', 'json'</b>) sont lus comme avec <b>readtable</b>, avec les mêmes arguments nom-valeur JSON ou un objet <b>nelson.io.json.JSONImportOptions</b>. La première variable datetime ou duration donne les temps de ligne, sauf si une option de temps de ligne est indiquée.

## 💡 Exemples

Lire un fichier et détecter automatiquement la première colonne de temps.

```matlab

Time = {'2024-01-01'; '2024-01-02'; '2024-01-03'};
Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Time, Temperature, Pressure);
filename = [tempdir(), 'readtimetable_auto.csv'];
writetable(T, filename);
TT = readtimetable(filename)
TT.Properties.RowTimes

```
Sélectionner la colonne de temps par son nom.

```matlab

Date = {'2024-01-01'; '2024-01-02'; '2024-01-03'};
Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Date, Temperature, Pressure);
filename = [tempdir(), 'readtimetable_timevariable.csv'];
writetable(T, filename);
TT = readtimetable(filename, 'RowTimes', 'Date')
TT.Properties.VariableNames

```
Fournir les temps de ligne explicitement.

```matlab

Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Temperature, Pressure);
filename = [tempdir(), 'readtimetable_rowtimes.csv'];
writetable(T, filename);
rowTimes = seconds([10; 20; 30]);
TT = readtimetable(filename, 'RowTimes', rowTimes)
TT.Properties.RowTimes

```
Générer des temps de ligne réguliers avec StartTime et SampleRate.

```matlab

Temperature = [12.5; 13.0; 11.75; 12.25];
T = table(Temperature);
filename = [tempdir(), 'readtimetable_samplerate.csv'];
writetable(T, filename);
TT = readtimetable(filename, 'StartTime', seconds(0), 'SampleRate', 0.5)
TT.Properties.RowTimes

```
Lire un fichier JSON en timetable :

```matlab
TT = timetable(datetime(2024, 1, 1) + days(0:2)', [12.5; 13; 11.75], 'VariableNames', {'Temperature'}); f = [tempdir, 'timetable_json.json']; writetimetable(TT, f, 'PrettyPrint', false); fileread(f) TT2 = readtimetable(f)
```


## 🔗 Voir aussi

[readtable](../spreadsheet/readtable.md), [writetimetable](../spreadsheet/writetimetable.md), [timetable](../table/1_create_convert_tables/timetable.md), [jsonImportOptions](../spreadsheet/jsonImportOptions.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
| 2.0.0   | Fichiers JSON : lecture de données JSON sous forme de timetable. |

<!--
## 👤 Auteur

Allan CORNET
-->
