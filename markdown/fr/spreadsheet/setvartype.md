# setvartype

Definir les types de donnees des variables selectionnees.

## 📝 Syntaxe

- opts = setvartype(opts, selection, types)

## 📥 Argument d'entrée

- opts - un objet d'options d'importation (texte delimite ou feuille de calcul).
- selection - noms de variables (chaine de caracteres, tableau de chaines ou cellule) ou indices numeriques.
- types - un type unique applique a toutes les variables selectionnees, ou un type par variable selectionnee.

## 📤 Argument de sortie

- opts - l'objet d'options d'importation mis a jour.

## 📄 Description


<b>setvartype</b> definit les types de donnees des variables selectionnees d'un objet d'options d'importation, en mettant a jour <b>VariableTypes</b> et les options par variable.

## 💡 Exemple



```matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["id", "value"];
opts = setvartype(opts, ["id", "value"], 'double')
```


## 🔗 Voir aussi

[setvaropts](../spreadsheet/setvaropts.md), [getvaropts](../spreadsheet/getvaropts.md), [delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
