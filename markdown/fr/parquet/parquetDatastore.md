# parquetDatastore

Creer un datastore pour un ou plusieurs fichiers Parquet.

## 📝 Syntaxe

- pds = parquetDatastore(location)
- pds = parquetDatastore(location, Name, Value)

## 📥 Argument d'entrée

- location - un nom de fichier, un dossier, un motif avec jokers, un tableau de chaines ou une cellule de vecteurs de caracteres.
- Name, Value - arguments optionnels specifies sous forme de paires nom-valeur.

## 📤 Argument de sortie

- pds - un objet <b>nelson.io.datastore.ParquetDatastore</b>.

## 📄 Description

<b>pds = parquetDatastore(location)</b> cree un datastore qui lit les fichiers Parquet locaux de l'emplacement indique.

Lorsque <b>location</b> est un dossier, les fichiers qui se terminent par <b>.parquet</b> dans ce dossier sont selectionnes. Les motifs avec jokers peuvent selectionner plusieurs fichiers.

Les paires nom-valeur prises en charge sont <b>ReadSize</b>, <b>SelectedVariableNames</b>, <b>OutputType</b>, <b>RowTimes</b>, <b>RowFilter</b> et <b>VariableNamingRule</b>.

Le datastore lit un fichier a la fois. Utilisez <b>hasdata</b>, <b>read</b>, <b>readall</b>, <b>preview</b> et <b>reset</b> pour parcourir les donnees.

## 💡 Exemples

```matlab
folder = tempdir();
file1 = [folder, 'doc_parquet_ds_1.parquet'];
file2 = [folder, 'doc_parquet_ds_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
pds = parquetDatastore([folder, 'doc_parquet_ds_*.parquet']);
pds.VariableNames
T = readall(pds)
```

```matlab
folder = tempdir();
file1 = [folder, 'doc_parquet_ds_filter_1.parquet'];
file2 = [folder, 'doc_parquet_ds_filter_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
rf = rowfilter({'Id', 'Value'});
pds = parquetDatastore([folder, 'doc_parquet_ds_filter_*.parquet'], ...
  'SelectedVariableNames', {'Id', 'Value'}, 'RowFilter', rf.Value > 15);
T = readall(pds)
```

## 🔗 Voir aussi

[nelson.io.datastore.ParquetDatastore](../parquet/class_ParquetDatastore.md), [parquetread](../parquet/parquetread.md), [rowfilter](../parquet/rowfilter.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
