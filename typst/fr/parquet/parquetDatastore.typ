#import "nelson_help.typ": *

= parquetDatastore <parquet:parquetDatastore>

Creer un datastore pour un ou plusieurs fichiers Parquet.

== Syntaxe

- #raw("pds = parquetDatastore(location)");
- #raw("pds = parquetDatastore(location, Name, Value)");

== Argument d'entrée

/ location: un nom de fichier, un dossier, un motif avec jokers, un tableau de chaines ou une cellule de vecteurs de caracteres.
/ Name, Value: arguments optionnels specifies sous forme de paires nom-valeur.

== Argument de sortie

/ pds: un objet #strong[nelson.io.datastore.ParquetDatastore];.

== Description

#strong[pds \= parquetDatastore(location)]; cree un datastore qui lit les fichiers Parquet locaux de l'emplacement indique.

 Lorsque #strong[location]; est un dossier, les fichiers qui se terminent par #strong[.parquet]; dans ce dossier sont selectionnes. Les motifs avec jokers peuvent selectionner plusieurs fichiers.

 Les paires nom-valeur prises en charge sont #strong[ReadSize];, #strong[SelectedVariableNames];, #strong[OutputType];, #strong[RowTimes];, #strong[RowFilter]; et #strong[VariableNamingRule];.

 Le datastore lit un fichier a la fois. Utilisez #strong[hasdata];, #strong[read];, #strong[readall];, #strong[preview]; et #strong[reset]; pour parcourir les donnees.


== Exemples

``````matlab
folder = tempdir();
file1 = [folder, 'doc_parquet_ds_1.parquet'];
file2 = [folder, 'doc_parquet_ds_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
pds = parquetDatastore([folder, 'doc_parquet_ds_*.parquet']);
pds.VariableNames
T = readall(pds)
``````

``````matlab
folder = tempdir();
file1 = [folder, 'doc_parquet_ds_filter_1.parquet'];
file2 = [folder, 'doc_parquet_ds_filter_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
rf = rowfilter({'Id', 'Value'});
pds = parquetDatastore([folder, 'doc_parquet_ds_filter_*.parquet'], ...
  'SelectedVariableNames', {'Id', 'Value'}, 'RowFilter', rf.Value > 15);
T = readall(pds)
``````


== Voir aussi

#nlink(<parquet:class_ParquetDatastore>)[nelson.io.datastore.ParquetDatastore];, #nlink(<parquet:parquetread>)[parquetread];, #nlink(<parquet:rowfilter>)[rowfilter];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
