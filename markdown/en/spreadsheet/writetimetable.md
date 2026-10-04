# writetimetable

Write timetable to file.

## 📝 Syntax

- writetimetable(TT)
- writetimetable(TT, filename)
- writetimetable(..., Name, Value)

## 📥 Input argument

- TT - a timetable.
- filename - a string specifying the destination filename.
- Name, Value - optional write settings such as Delimiter, WriteVariableNames, WriteMode, QuoteStrings, and FileType.

## 📄 Description

<b>writetimetable</b> writes a timetable to a delimited text file.

Row times are written as the first output column. Data variables are written after the row-time column and retain their variable names.

The supported text-file options match the practical surface of <b>writetable</b>, including <b>Delimiter</b>, <b>WriteVariableNames</b>, <b>WriteMode</b>, and <b>QuoteStrings</b>.

Datetime and duration row times are converted to stable text before writing. The resulting delimited text file can be read back with <b>readtimetable</b>.

<b>JSON files</b> (<b>.json</b> extension or <b>'FileType', 'json'</b>): the timetable is written as a JSON array with one object per row. The row times are the first value of each object, keyed by the first dimension name. <b>PrettyPrint</b> and <b>PreserveInfAndNaN</b> behave as in <b>writetable</b>.

## 💡 Examples

Write a timetable and read it back.

```matlab

Time = datetime(2026, 1, 1) + hours(0:2)';
Temperature = [20.1; 21.3; 22.0];
Pressure = [1012; 1011; 1013];
TT1 = timetable(Time, Temperature, Pressure, ...
  'VariableNames', {'Temperature', 'Pressure'});
filename = [tempdir(), 'writetimetable_roundtrip.csv'];
writetimetable(TT1, filename);
TT2 = readtimetable(filename)

```

Use a semicolon delimiter.

```matlab

Time = datetime(2026, 1, 1) + days(0:2)';
Temperature = [20.1; 21.3; 22.0];
TT = timetable(Time, Temperature);
filename = [tempdir(), 'writetimetable_semicolon.csv'];
writetimetable(TT, filename, 'Delimiter', ';');
fileread(filename)

```

Write duration row times.

```matlab

Time = seconds([0; 5; 10]);
Signal = [3.2; 4.1; 3.8];
TT = timetable(Time, Signal);
filename = [tempdir(), 'writetimetable_duration.csv'];
writetimetable(TT, filename);
fileread(filename)

```

Append rows to an existing text file.

```matlab

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

```

Write a timetable to a JSON file:

```matlab
TT = timetable(datetime(2024, 1, 1) + days(0:2)', [12.5; 13; 11.75], 'VariableNames', {'Temperature'}); f = [tempdir, 'timetable_json.json']; writetimetable(TT, f, 'PrettyPrint', false); fileread(f) TT2 = readtimetable(f)
```

## 🔗 See also

[readtimetable](../spreadsheet/readtimetable.md), [writetable](../spreadsheet/writetable.md), [timetable](../table/timetable.md).

## 🕔 History

| Version | 📄 Description                                                |
| ------- | ------------------------------------------------------------- |
| 2.0.0   | initial version                                               |
| 2.0.0   | JSON files: FileType json, PrettyPrint and PreserveInfAndNaN. |

<!--
## 👤 Author

Allan CORNET
-->
