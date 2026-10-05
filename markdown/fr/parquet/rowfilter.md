# rowfilter

Creer une expression de filtre de lignes.

## 📝 Syntaxe

- rf = rowfilter(names)
- rf = rowfilter(T)
- rf = rowfilter(info)

## 📥 Argument d'entrée

- names - noms de variables specifies comme tableau de chaines ou cellule de vecteurs de caracteres.
- T - une table ou timetable dont les noms de variables sont utilises par le filtre.
- info - un objet <b>nelson.io.parquet.ParquetInfo</b> dont les noms de variables sont utilises par le filtre.

## 📤 Argument de sortie

- rf - un objet <b>nelson.io.RowFilter</b>.

## 📄 Description


<b>rowfilter</b> cree un objet filtre qui expose les noms de variables avec la notation par point. 

Utilisez les operateurs relationnels <b>></b>, <b>>=</b>, <b><</b>, <b><=</b>, <b>==</b> et <b>~=</b> pour creer des comparaisons. Utilisez les operateurs logiques <b>&</b>, <b>\|</b> et <b>~</b> pour combiner les expressions. 

L'objet obtenu peut etre passe a <b>parquetread</b> ou <b>parquetDatastore</b> avec la paire nom-valeur <b>RowFilter</b>. Il peut aussi etre applique directement a une table avec <b>rf.apply(T)</b>.

## 💡 Exemples



```matlab
T = table([1; 2; 3; 4], [10; 20; 30; 40], ...
  'VariableNames', {'Id', 'Value'});
rf = rowfilter(T);
R = (rf.Id >= 2 & rf.Value < 40).apply(T)
```


```matlab
filename = [tempdir(), 'doc_rowfilter.parquet'];
T = table([1; 2; 3; 4], [10; 20; 30; 40], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T);
info = parquetinfo(filename);
rf = rowfilter(info);
R = parquetread(filename, 'RowFilter', rf.Value >= 30)
```


## 🔗 Voir aussi

[nelson.io.RowFilter](../parquet/class_RowFilter.md), [parquetread](../parquet/parquetread.md), [parquetDatastore](../parquet/parquetDatastore.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
