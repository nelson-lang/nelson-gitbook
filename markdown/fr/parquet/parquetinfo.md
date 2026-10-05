# parquetinfo

Retourner les metadonnees d'un fichier Parquet.

## 📝 Syntaxe

- info = parquetinfo(filename)

## 📥 Argument d'entrée

- filename - une chaine : fichier Parquet a inspecter.

## 📤 Argument de sortie

- info - un objet <b>nelson.io.parquet.ParquetInfo</b>.

## 📄 Description


<b>info = parquetinfo(filename)</b> lit les metadonnees Parquet sans importer toute la table. 

L'objet retourne expose les metadonnees du fichier : nom du fichier, taille, nombre de lignes, nombre de variables, nombre de groupes de lignes, tailles des groupes, noms de variables, types de variables, compression et description du writer si disponible.

## 💡 Exemple



```matlab
filename = [tempdir(), 'doc_parquetinfo.parquet'];
T = table(int32([1; 2; 3]), [10; 20; 30], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T, 'RowGroupHeights', 2);
info = parquetinfo(filename);
info.NumRows
info.VariableNames
info.RowGroups
```


## 🔗 Voir aussi

[nelson.io.parquet.ParquetInfo](../parquet/class_ParquetInfo.md), [parquetread](../parquet/parquetread.md), [parquetwrite](../parquet/parquetwrite.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
