# getvaropts

Obtenir les options d'importation des variables selectionnees.

## 📝 Syntaxe

- value = getvaropts(opts, selection)

## 📥 Argument d'entrée

- opts - un objet d'options d'importation (texte delimite ou feuille de calcul).
- selection - noms de variables (chaine de caracteres, tableau de chaines ou cellule) ou indices numeriques.

## 📤 Argument de sortie

- value - un tableau de structures contenant les options par variable des variables selectionnees.

## 📄 Description


<b>getvaropts</b> retourne les options d'importation par variable des variables selectionnees d'un objet d'options d'importation.

## 💡 Exemple



```matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["date", "value"];
opts.VariableTypes = ["datetime", "double"];
opts = setvaropts(opts, "date", 'InputFormat', 'MM/dd/yy');
getvaropts(opts, "date")
```


## 🔗 Voir aussi

[setvaropts](../spreadsheet/setvaropts.md), [setvartype](../spreadsheet/setvartype.md), [delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
