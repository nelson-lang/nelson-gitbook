# detectImportOptions

Créer des options d'importation basées sur le contenu du fichier.

## 📝 Syntaxe

- options = detectImportOptions(filename)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier source.

## 📤 Argument de sortie

- options - Objet DelimitedTextImportOptions.

## 📄 Description

<b>options = detectImportOptions(filename)</b> identifie une table dans un fichier et renvoie un objet d'options d'importation <b>options</b>.

Vous pouvez personnaliser cet objet et l'utiliser avec<b>readtable</b>, <b>readcell</b> ou<b>readmatrix</b> pour contrôler la façon dont Nelson importe les données en tant que table, cellule ou matrice.

Le type de l'objet options renvoyé dépend de l'extension du fichier.

Propriétés :

<b>Delimiter</b> : caractères délimiteurs de champ. exemple : {','}

<b>LineEnding</b> : caractères de fin de ligne. exemple : {'\\r\\n'}

<b>CommentStyle</b> : style des commentaires. exemple : {'#'}

<b>EmptyLineRule</b> : procédure de gestion des lignes vides. exemple : 'skip'

<b>VariableNamesLine</b> : emplacement des noms de variables. exemple : 1

<b>VariableNames</b> : noms des variables. exemple : {'Names' 'Age' 'Height' 'Weight'}

<b>RowNamesColumn</b> : emplacement des noms de ligne. exemple : 0

<b>DataLines</b> : emplacement des données,<b>[l1 l2]</b> indique la plage de lignes contenant les données.<b>l1</b> fait référence à la première ligne avec données, tandis que <b>l2</b> fait référence à la dernière ligne. exemple : [2 Inf]

## 💡 Exemple

```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T = table(Names, Age, Height, Weight); writetable(T, [tempdir,'readcell_1.csv']) options = detectImportOptions([tempdir,'readcell_1.csv']) C1 = readcell([tempdir,'readcell_1.csv'], options) options.DataLines = [1 Inf] C2 = readcell([tempdir,'readcell_1.csv'], options)
```

## 🔗 Voir aussi

[readcell](../spreadsheet/readcell.md), [readtable](../spreadsheet/readtable.md), [readmatrix](../spreadsheet/readmatrix.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.10.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
