#import "nelson_help.typ": *

= detectImportOptions <spreadsheet:detectImportOptions>

Créer des options d'importation basées sur le contenu du fichier.

== Syntaxe

- #raw("options = detectImportOptions(filename)");
- #raw("options = detectImportOptions(filename, Name, Value)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier source.
/ Name, Value: fichiers JSON seulement : FileType, TableSelector, TableNodeName, VariableSelectors, RowNamesSelector, VariableUnitsSelector, VariableDescriptionsSelector, RepeatedNodeRule, ParsingMode, AllowComments, AllowInfAndNaN, AllowTrailingCommas, MissingRule, ImportErrorRule et TextType (voir #strong[readtable];).

== Argument de sortie

/ options: Objet nelson.io.text.DelimitedTextImportOptions.

== Description

#strong[options \= detectImportOptions(filename)]; identifie une table dans un fichier texte delimite et renvoie un objet #strong[nelson.io.text.DelimitedTextImportOptions];.

 Vous pouvez personnaliser cet objet et l'utiliser avec#strong[readtable];, #strong[readcell]; ou#strong[readmatrix]; pour contrôler la façon dont Nelson importe les données en tant que table, cellule ou matrice.

 

 Propriétés :

 #strong[Delimiter]; : caractères délimiteurs de champ. exemple : {','}

 #strong[LineEnding]; : caractères de fin de ligne. exemple : {'\\r\\n'}

 #strong[CommentStyle]; : style des commentaires. exemple : {'\#'}

 #strong[EmptyLineRule]; : procédure de gestion des lignes vides. exemple : 'skip'

 #strong[VariableNamesLine]; : emplacement des noms de variables. exemple : 1

 #strong[VariableNames]; : noms des variables. exemple : {'Names' 'Age' 'Height' 'Weight'}

 #strong[RowNamesColumn]; : emplacement des noms de ligne. exemple : 0

 #strong[DataLines]; : emplacement des données,#strong[\[l1 l2\]]; indique la plage de lignes contenant les données.#strong[l1]; fait référence à la première ligne avec données, tandis que #strong[l2]; fait référence à la dernière ligne. exemple : \[2 Inf\]

 Pour un #strong[fichier JSON]; (extension #strong[.json]; ou #strong['FileType', 'json'];), #strong[detectImportOptions]; renvoie un objet #strong[nelson.io.json.JSONImportOptions]; utilisable avec #strong[readtable]; et #strong[readtimetable];. Ses propriétés #strong[TableSelector]; et #strong[VariableSelectors]; contiennent les pointeurs JSON détectés, #strong[VariableNames]; et #strong[VariableTypes]; les noms et types détectés.


== Exemples

``````matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T = table(Names, Age, Height, Weight); writetable(T, [tempdir,'readcell_1.csv']) options = detectImportOptions([tempdir,'readcell_1.csv']) C1 = readcell([tempdir,'readcell_1.csv'], options) options.DataLines = [1 Inf] C2 = readcell([tempdir,'readcell_1.csv'], options)
``````

Détecter les options d'un fichier JSON :

``````matlab
T = table([1; 2], ["a"; "b"], 'VariableNames', {'x', 'name'}); f = [tempdir, 'detect_json.json']; writetable(T, f); opts = detectImportOptions(f) opts.SelectedVariableNames = {'name'}; T2 = readtable(f, opts)
``````


== Voir aussi

#nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];, #nlink(<spreadsheet:readcell>)[readcell];, #nlink(<spreadsheet:readtable>)[readtable];, #nlink(<spreadsheet:readmatrix>)[readmatrix];, #nlink(<spreadsheet:jsonImportOptions>)[jsonImportOptions];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
  [2.0.0], [Fichiers JSON : renvoie un objet JSONImportOptions.],
)

// Auteur: Allan CORNET
