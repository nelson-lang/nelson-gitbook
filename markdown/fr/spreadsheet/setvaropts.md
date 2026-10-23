# setvaropts

Definir les options d'importation des variables selectionnees.

## 📝 Syntaxe

- opts = setvaropts(opts, selection, Name, Value)
- opts = setvaropts(opts, selection, Name1, Value1, Name2, Value2, ...)

## 📥 Argument d'entrée

- opts - un objet d'options d'importation (texte delimite ou feuille de calcul).
- selection - noms de variables (chaine de caracteres, tableau de chaines ou cellule) ou indices numeriques.
- Name, Value - options par variable comme 'Type', 'InputFormat', 'WhitespaceRule', 'EmptyFieldRule' ou 'FillValue'.

## 📤 Argument de sortie

- opts - l'objet d'options d'importation mis a jour.

## 📄 Description


<b>setvaropts</b> definit les options d'importation par variable pour les variables selectionnees d'un objet d'options d'importation et retourne l'objet mis a jour. 

La selection est validee par rapport aux noms de variables declares. Definir l'option 'Type' met aussi a jour l'entree correspondante de <b>VariableTypes</b>.

## 💡 Exemple



```matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["date", "value"];
opts.VariableTypes = ["datetime", "double"];
opts = setvaropts(opts, "date", 'InputFormat', 'MM/dd/yy')
```


## 🔗 Voir aussi

[getvaropts](../spreadsheet/getvaropts.md), [setvartype](../spreadsheet/setvartype.md), [delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md), [spreadsheetImportOptions](../spreadsheet/spreadsheetImportOptions.md), [readtable](../spreadsheet/readtable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
