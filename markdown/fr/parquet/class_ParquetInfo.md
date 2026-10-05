# nelson.io.parquet.ParquetInfo

Objet de metadonnees retourne par parquetinfo.

## 📝 Syntaxe

- info = parquetinfo(filename)

## 📥 Argument d'entrée

- filename - une chaine : fichier Parquet a inspecter.

## 📤 Argument de sortie

- info - un objet <b>nelson.io.parquet.ParquetInfo</b>.

## 📄 Description


<b>nelson.io.parquet.ParquetInfo</b> stocke les metadonnees retournees par <b>parquetinfo</b>. 

Les proprietes sont <b>Filename</b>, <b>FileSize</b>, <b>NumRows</b>, <b>NumVariables</b>, <b>NumRowGroups</b>, <b>RowGroups</b>, <b>Variables</b>, <b>CreatedBy</b> et la propriete dependante <b>VariableNames</b>. 

<b>RowGroups</b> est une table contenant les metadonnees des groupes de lignes. <b>Variables</b> est une structure contenant les noms de variables, les types Parquet et les informations de compression.

## 💡 Exemple



```matlab
filename = [tempdir(), 'doc_ParquetInfo.parquet'];
T = table(int32([1; 2; 3]), [10; 20; 30], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T);
info = parquetinfo(filename);
class(info)
info.Filename
info.VariableNames
```


## 🔗 Voir aussi

[parquetinfo](../parquet/parquetinfo.md), [parquetread](../parquet/parquetread.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
