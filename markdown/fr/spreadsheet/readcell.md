# readcell

Créer une cellule à partir d'un fichier.

## 📝 Syntaxe

- C = readcell(filename)
- C = readcell(filename, opts)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier source.
- opts - Objet nelson.io.text.DelimitedTextImportOptions

## 📤 Argument de sortie

- C - une cellule.

## 📄 Description

<b>C = readcell(filename)</b> crée une cellule en important des données orientées colonne depuis un fichier texte ou tableur.

<b>C = readcell(filename, opts)</b> crée une cellule en utilisant les paramètres définis dans l'objet d'options d'importation<b>opts</b>. L'objet d'options d'importation permet de personnaliser la façon dont <b>readcell</b> interprète le fichier, offrant un meilleur contrôle, de meilleures performances et la possibilité de réutiliser la configuration comparé à la syntaxe par défaut.

## 💡 Exemples

```matlab
  Names = {'John'; 'Alice'; 'Bob'; 'Diana'};  Age = [28; 34; 22; 30];  Height = [175; 160; 180; 165];  Weight = [70; 55; 80; 60];  T = table(Names, Age, Height, Weight);  writetable(T, [tempdir,'readcell_1.csv'])  C = readcell([tempdir,'readcell_1.csv'])
```

```matlab
  Names = {'John'; 'Alice'; 'Bob'; 'Diana'};  Age = [28; 34; 22; 30];  Height = [175; 160; 180; 165];  Weight = [70; 55; 80; 60];  T = table(Names, Age, Height, Weight);  writetable(T, [tempdir,'readcell_1.csv'])  options = detectImportOptions([tempdir,'readcell_1.csv']);  C1 = readcell([tempdir,'readcell_1.csv'], options)  options.DataLines = [1 Inf]  C2 = readcell([tempdir,'readcell_1.csv'], options)
```

## 🔗 Voir aussi

[delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md), [writecell](../spreadsheet/writecell.md), [detectImportOptions](../spreadsheet/detectImportOptions.md), [writetable](../spreadsheet/writetable.md), [readtable](../spreadsheet/readtable.md), [fileread](../stream_manager/fileread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.10.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
