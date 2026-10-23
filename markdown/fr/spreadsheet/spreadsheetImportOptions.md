# spreadsheetImportOptions

Creer des options pour importer des donnees de feuille de calcul.

## 📝 Syntaxe

- opts = spreadsheetImportOptions()
- opts = spreadsheetImportOptions(Name, Value)

## 📥 Argument d'entrée

- Name, Value - arguments nom-valeur comme 'NumVariables', 'VariableNames', 'VariableTypes', 'Sheet' ou 'DataRange'.

## 📤 Argument de sortie

- opts - Objet nelson.io.spreadsheet.SpreadsheetImportOptions.

## 📄 Description


<b>spreadsheetImportOptions</b> cree un objet d'options d'importation pour les fichiers de feuille de calcul (xlsx). 

L'objet utilise la classe Nelson <b>nelson.io.spreadsheet.SpreadsheetImportOptions</b> et est consomme par <b>readtable</b> avec l'option 'UseExcel' a false. 

Utilisez <b>setvaropts</b> pour configurer les options par variable comme le 'InputFormat' des dates.

## 💡 Exemple



```matlab
opts = spreadsheetImportOptions('NumVariables', 3);
opts.VariableNames = ["name", "value", "date"];
opts.VariableTypes = ["string", "double", "datetime"]
```


## 🔗 Voir aussi

[delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md), [setvaropts](../spreadsheet/setvaropts.md), [readtable](../spreadsheet/readtable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
