# parquetread

Lire des donnees de table depuis un fichier Parquet.

## 📝 Syntaxe

- T = parquetread(filename)
- T = parquetread(filename, Name, Value)

## 📥 Argument d'entrée

- filename - une chaine : fichier Parquet a lire.
- Name, Value - arguments optionnels specifies sous forme de paires nom-valeur.

## 📤 Argument de sortie

- T - une table ou une timetable.

## 📄 Description

<b>T = parquetread(filename)</b> lit un fichier Parquet local et retourne son contenu sous forme de table.

<b>T = parquetread(filename, Name, Value)</b> personnalise la lecture. Les noms pris en charge sont <b>OutputType</b>, <b>SelectedVariableNames</b>, <b>RowTimes</b>, <b>StartTime</b>, <b>SampleRate</b>, <b>TimeStep</b>, <b>RowGroups</b>, <b>RowFilter</b> et <b>VariableNamingRule</b>.

<b>OutputType</b> peut valoir <b>'table'</b> ou <b>'timetable'</b>. Pour creer une timetable, les temps de lignes peuvent etre fournis par <b>RowTimes</b>, generes avec <b>StartTime</b> et <b>SampleRate</b>, generes avec <b>StartTime</b> et <b>TimeStep</b>, ou pris depuis la premiere variable du fichier.

<b>SelectedVariableNames</b> limite les variables retournees. <b>RowGroups</b> limite les groupes de lignes lus. <b>RowFilter</b> accepte un objet <b>nelson.io.RowFilter</b> et l'applique a la table retournee.

## 💡 Exemples

```matlab
filename = [tempdir(), 'doc_parquetread.parquet'];
T = table(int32([1; 2; 3]), [10.5; 20.5; 30.5], ["low"; "mid"; "high"], ...
  'VariableNames', {'Id', 'Value', 'Label'});
parquetwrite(filename, T);
R = parquetread(filename)
```

```matlab
filename = [tempdir(), 'doc_parquetread_selected.parquet'];
T = table(int32([1; 2; 3; 4]), [10; 20; 30; 40], logical([true; false; true; false]), ...
  'VariableNames', {'Id', 'Value', 'Flag'});
parquetwrite(filename, T);
R = parquetread(filename, 'SelectedVariableNames', {'Id', 'Flag'})
```

```matlab
filename = [tempdir(), 'doc_parquetread_filter.parquet'];
T = table(int32([1; 2; 3; 4]), [10; 20; 30; 40], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T);
rf = rowfilter({'Id', 'Value'});
R = parquetread(filename, 'RowFilter', rf.Value >= 30)
```

```matlab
filename = [tempdir(), 'doc_parquetread_timetable.parquet'];
T = table([100; 200; 300], 'VariableNames', {'Signal'});
parquetwrite(filename, T);
TT = parquetread(filename, 'OutputType', 'timetable', ...
  'StartTime', datetime(2026, 1, 1), 'TimeStep', seconds(5))
```

## 🔗 Voir aussi

[parquetwrite](../parquet/parquetwrite.md), [parquetinfo](../parquet/parquetinfo.md), [rowfilter](../parquet/rowfilter.md), [table](../table/table.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
