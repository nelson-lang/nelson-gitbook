# nelson.io.datastore.ParquetDatastore

Objet datastore pour fichiers Parquet.

## 📝 Syntaxe

- pds = parquetDatastore(location)
- [T, info] = read(pds)
- T = readall(pds)
- T = preview(pds)
- tf = hasdata(pds)
- reset(pds)

## 📥 Argument d'entrée

- location - un nom de fichier, un dossier, un motif avec jokers, un tableau de chaines ou une cellule de vecteurs de caracteres.
- pds - un objet <b>nelson.io.datastore.ParquetDatastore</b>.

## 📤 Argument de sortie

- T - une table ou une timetable.
- info - une structure contenant le nom du fichier courant et son index.
- tf - une valeur logique.

## 📄 Description


<b>nelson.io.datastore.ParquetDatastore</b> est cree par <b>parquetDatastore</b>. 

Les proprietes sont <b>Files</b>, <b>ReadSize</b>, <b>SelectedVariableNames</b>, <b>OutputType</b>, <b>RowTimes</b>, <b>RowFilter</b>, <b>VariableNamingRule</b> et la propriete dependante <b>VariableNames</b>. 

<b>read</b> retourne le fichier suivant comme table et avance le datastore. <b>readall</b> concatene les fichiers restants apres reinitialisation du datastore. <b>preview</b> lit les premieres lignes du premier fichier. <b>hasdata</b> indique si des fichiers restent a lire. <b>reset</b> replace le datastore sur le premier fichier.

## 💡 Exemple



```matlab
folder = tempdir();
file1 = [folder, 'doc_ParquetDatastore_1.parquet'];
file2 = [folder, 'doc_ParquetDatastore_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
pds = parquetDatastore([folder, 'doc_ParquetDatastore_*.parquet']);
hasdata(pds)
[T1, readInfo] = read(pds)
reset(pds);
T = readall(pds)
```


## 🔗 Voir aussi

[parquetDatastore](../parquet/parquetDatastore.md), [parquetread](../parquet/parquetread.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
