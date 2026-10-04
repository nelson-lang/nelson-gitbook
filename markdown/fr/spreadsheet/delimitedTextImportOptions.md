# delimitedTextImportOptions

Creer des options pour importer des donnees texte delimitees.

## 📝 Syntaxe

- opts = delimitedTextImportOptions()
- opts = delimitedTextImportOptions(Name, Value)

## 📥 Argument d'entrée

- Name, Value - arguments nom-valeur comme 'NumVariables', 'VariableNames', 'VariableTypes', 'Delimiter' ou 'DataLines'.

## 📤 Argument de sortie

- opts - Objet nelson.io.text.DelimitedTextImportOptions.

## 📄 Description

<b>delimitedTextImportOptions</b> cree un objet d'options d'importation pour les fichiers texte delimites.

## 💡 Exemple

```matlab
opts = delimitedTextImportOptions('NumVariables', 3) opts.Delimiter = {';'} opts.DataLines = [2 Inf]
```

## 🔗 Voir aussi

[detectImportOptions](../spreadsheet/detectImportOptions.md), [readtable](../spreadsheet/readtable.md), [readcell](../spreadsheet/readcell.md), [readmatrix](../spreadsheet/readmatrix.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
