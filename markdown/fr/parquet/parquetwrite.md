# parquetwrite

Ecrire une table dans un fichier Parquet.

## 📝 Syntaxe

- parquetwrite(filename, T)
- parquetwrite(filename, T, Name, Value)

## 📥 Argument d'entrée

- filename - une chaine : fichier Parquet de destination.
- T - une table ou une timetable.
- Name, Value - arguments optionnels specifies sous forme de paires nom-valeur.

## 📄 Description

<b>parquetwrite(filename, T)</b> ecrit la table ou timetable <b>T</b> dans un fichier Parquet local.

Les types de variables pris en charge incluent les valeurs logiques, les types entiers, les nombres flottants simple et double precision, le texte, les valeurs datetime, les durees, les tables imbriquees et les colonnes de cellules homogenes de vecteurs primitifs.

Les variables non prises en charge, comme les tableaux complexes, les tableaux sparse, les objets de classe non pris en charge et certaines formes imbriquees de cellules, generent une erreur.

Les paires nom-valeur prises en charge sont <b>VariableCompression</b>, <b>VariableEncoding</b>, <b>VariableNames</b>, <b>RowGroupHeights</b> et <b>Version</b>.

<b>VariableCompression</b> accepte des valeurs comme <b>'snappy'</b>, <b>'gzip'</b>, <b>'brotli'</b>, <b>'zstd'</b>, <b>'lz4'</b> et <b>'uncompressed'</b>. <b>VariableEncoding</b> accepte <b>'auto'</b>, <b>'plain'</b> ou <b>'dictionary'</b>. <b>Version</b> accepte <b>'1.0'</b>, <b>'2.4'</b> ou <b>'2.6'</b>.

## 💡 Exemples

```matlab
filename = [tempdir(), 'doc_parquetwrite.parquet'];
T = table(int32([1; 2; 3]), single([1.5; 2.5; 3.5]), logical([true; false; true]), ...
  ["A"; "B"; "C"], 'VariableNames', {'Id', 'Value', 'Flag', 'Name'});
parquetwrite(filename, T);
R = parquetread(filename)
```

```matlab
filename = [tempdir(), 'doc_parquetwrite_rowgroups.parquet'];
T = table((1:6)', [10; 20; 30; 40; 50; 60], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T, 'RowGroupHeights', 2, 'VariableCompression', 'gzip');
info = parquetinfo(filename);
info.NumRowGroups
```

```matlab
filename = [tempdir(), 'doc_parquetwrite_nested.parquet'];
Nested = table(int16([10; 20; 30]), [1.5; 2.5; 3.5], 'VariableNames', {'Code', 'Value'});
T = table((1:3)', Nested, 'VariableNames', {'Id', 'Nested'});
parquetwrite(filename, T);
R = parquetread(filename);
R.Nested
```

## 🔗 Voir aussi

[parquetread](../parquet/parquetread.md), [parquetinfo](../parquet/parquetinfo.md), [table](../table/table.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
