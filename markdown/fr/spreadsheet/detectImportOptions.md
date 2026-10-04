# detectImportOptions

Créer des options d'importation basées sur le contenu du fichier.

## 📝 Syntaxe

- options = detectImportOptions(filename)
- options = detectImportOptions(filename, Name, Value)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier source.
- Name, Value - fichiers JSON seulement : FileType, TableSelector, TableNodeName, VariableSelectors, RowNamesSelector, VariableUnitsSelector, VariableDescriptionsSelector, RepeatedNodeRule, ParsingMode, AllowComments, AllowInfAndNaN, AllowTrailingCommas, MissingRule, ImportErrorRule et TextType (voir <b>readtable</b>).

## 📤 Argument de sortie

- options - Objet nelson.io.text.DelimitedTextImportOptions.

## 📄 Description

<b>options = detectImportOptions(filename)</b> identifie une table dans un fichier texte delimite et renvoie un objet <b>nelson.io.text.DelimitedTextImportOptions</b>.

Vous pouvez personnaliser cet objet et l'utiliser avec<b>readtable</b>, <b>readcell</b> ou<b>readmatrix</b> pour contrôler la façon dont Nelson importe les données en tant que table, cellule ou matrice.

Propriétés :

<b>Delimiter</b> : caractères délimiteurs de champ. exemple : {','}

<b>LineEnding</b> : caractères de fin de ligne. exemple : {'\\r\\n'}

<b>CommentStyle</b> : style des commentaires. exemple : {'#'}

<b>EmptyLineRule</b> : procédure de gestion des lignes vides. exemple : 'skip'

<b>VariableNamesLine</b> : emplacement des noms de variables. exemple : 1

<b>VariableNames</b> : noms des variables. exemple : {'Names' 'Age' 'Height' 'Weight'}

<b>RowNamesColumn</b> : emplacement des noms de ligne. exemple : 0

<b>DataLines</b> : emplacement des données,<b>[l1 l2]</b> indique la plage de lignes contenant les données.<b>l1</b> fait référence à la première ligne avec données, tandis que <b>l2</b> fait référence à la dernière ligne. exemple : [2 Inf]

Pour un <b>fichier JSON</b> (extension <b>.json</b> ou <b>'FileType', 'json'</b>), <b>detectImportOptions</b> renvoie un objet <b>nelson.io.json.JSONImportOptions</b> utilisable avec <b>readtable</b> et <b>readtimetable</b>. Ses propriétés <b>TableSelector</b> et <b>VariableSelectors</b> contiennent les pointeurs JSON détectés, <b>VariableNames</b> et <b>VariableTypes</b> les noms et types détectés.

## 💡 Exemples

```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T = table(Names, Age, Height, Weight); writetable(T, [tempdir,'readcell_1.csv']) options = detectImportOptions([tempdir,'readcell_1.csv']) C1 = readcell([tempdir,'readcell_1.csv'], options) options.DataLines = [1 Inf] C2 = readcell([tempdir,'readcell_1.csv'], options)
```

Détecter les options d'un fichier JSON :

```matlab
T = table([1; 2], ["a"; "b"], 'VariableNames', {'x', 'name'}); f = [tempdir, 'detect_json.json']; writetable(T, f); opts = detectImportOptions(f) opts.SelectedVariableNames = {'name'}; T2 = readtable(f, opts)
```

## 🔗 Voir aussi

[delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md), [readcell](../spreadsheet/readcell.md), [readtable](../spreadsheet/readtable.md), [readmatrix](../spreadsheet/readmatrix.md), [jsonImportOptions](../spreadsheet/jsonImportOptions.md).

## 🕔 Historique

| Version | 📄 Description                                      |
| ------- | --------------------------------------------------- |
| 1.10.0  | version initiale                                    |
| 2.0.0   | Fichiers JSON : renvoie un objet JSONImportOptions. |

<!--
## 👤 Auteur

Allan CORNET
-->
