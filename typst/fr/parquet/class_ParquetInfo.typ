#import "nelson_help.typ": *

= nelson.io.parquet.ParquetInfo <parquet:class_ParquetInfo>

Objet de metadonnees retourne par parquetinfo.

== Syntaxe

- #raw("info = parquetinfo(filename)");

== Argument d'entrée

/ filename: une chaine : fichier Parquet a inspecter.

== Argument de sortie

/ info: un objet #strong[nelson.io.parquet.ParquetInfo];.

== Description

#strong[nelson.io.parquet.ParquetInfo]; stocke les metadonnees retournees par #strong[parquetinfo];.

 Les proprietes sont #strong[Filename];, #strong[FileSize];, #strong[NumRows];, #strong[NumVariables];, #strong[NumRowGroups];, #strong[RowGroups];, #strong[Variables];, #strong[CreatedBy]; et la propriete dependante #strong[VariableNames];.

 #strong[RowGroups]; est une table contenant les metadonnees des groupes de lignes. #strong[Variables]; est une structure contenant les noms de variables, les types Parquet et les informations de compression.


== Exemple

``````matlab
filename = [tempdir(), 'doc_ParquetInfo.parquet'];
T = table(int32([1; 2; 3]), [10; 20; 30], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T);
info = parquetinfo(filename);
class(info)
info.Filename
info.VariableNames
``````


== Voir aussi

#nlink(<parquet:parquetinfo>)[parquetinfo];, #nlink(<parquet:parquetread>)[parquetread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
