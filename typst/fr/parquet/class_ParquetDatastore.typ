#import "nelson_help.typ": *

= nelson.io.datastore.ParquetDatastore <parquet:class_ParquetDatastore>

Objet datastore pour fichiers Parquet.

== Syntaxe

- #raw("pds = parquetDatastore(location)");
- #raw("[T, info] = read(pds)");
- #raw("T = readall(pds)");
- #raw("T = preview(pds)");
- #raw("tf = hasdata(pds)");
- #raw("reset(pds)");

== Argument d'entrée

/ location: un nom de fichier, un dossier, un motif avec jokers, un tableau de chaines ou une cellule de vecteurs de caracteres.
/ pds: un objet #strong[nelson.io.datastore.ParquetDatastore];.

== Argument de sortie

/ T: une table ou une timetable.
/ info: une structure contenant le nom du fichier courant et son index.
/ tf: une valeur logique.

== Description

#strong[nelson.io.datastore.ParquetDatastore]; est cree par #strong[parquetDatastore];.

 Les proprietes sont #strong[Files];, #strong[ReadSize];, #strong[SelectedVariableNames];, #strong[OutputType];, #strong[RowTimes];, #strong[RowFilter];, #strong[VariableNamingRule]; et la propriete dependante #strong[VariableNames];.

 #strong[read]; retourne le fichier suivant comme table et avance le datastore. #strong[readall]; concatene les fichiers restants apres reinitialisation du datastore. #strong[preview]; lit les premieres lignes du premier fichier. #strong[hasdata]; indique si des fichiers restent a lire. #strong[reset]; replace le datastore sur le premier fichier.


== Exemple

``````matlab
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
``````


== Voir aussi

#nlink(<parquet:parquetDatastore>)[parquetDatastore];, #nlink(<parquet:parquetread>)[parquetread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
