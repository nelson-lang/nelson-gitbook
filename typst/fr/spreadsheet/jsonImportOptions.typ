#import "nelson_help.typ": *

= jsonImportOptions <spreadsheet:jsonImportOptions>

Créer des options pour importer des données JSON.

== Syntaxe

- #raw("opts = jsonImportOptions()");
- #raw("opts = jsonImportOptions('NumVariables', numVars)");
- #raw("opts = jsonImportOptions(..., Name, Value)");

== Argument d'entrée

/ numVars: nombre de variables (défaut : 1).
/ Name, Value: noms et valeurs des propriétés de l'objet, et #strong['ParsingMode']; (#strong['lenient']; ou #strong['strict'];) qui fixe #strong[AllowComments];, #strong[AllowInfAndNaN]; et #strong[AllowTrailingCommas];.

== Argument de sortie

/ opts: Objet nelson.io.json.JSONImportOptions.

== Description

#strong[jsonImportOptions]; crée un objet d'options d'importation pour les fichiers JSON, à utiliser avec #strong[readtable]; et #strong[readtimetable];. #strong[detectImportOptions]; renvoie le même objet, rempli à partir d'un fichier JSON.

 Propriétés :

 

- #strong[VariableNames]; : noms des variables (défaut : Var1, Var2, ...).
- #strong[VariableNamingRule]; : #strong['preserve']; (défaut) ou #strong['modify'];.
- #strong[VariableTypes]; : types des variables : #strong['double'];, #strong['single'];, types entiers, #strong['logical'];, #strong['string'];, #strong['char'];, #strong['categorical'];, #strong['datetime'];, #strong['duration']; ou #strong['cell']; (défaut : #strong['char'];).
- #strong[SelectedVariableNames]; : sous-ensemble des variables à importer.
- #strong[VariableSelectors]; : pointeurs JSON RFC 6901 des variables, relatifs à un objet ligne. #strong["Keys"]; lit les clés des objets. Si vide, toutes les valeurs feuilles sont lues.
- #strong[RowNamesSelector]; : pointeur JSON des noms de lignes.
- #strong[TableSelector]; : pointeur JSON de la table (#strong[""];, le défaut, désigne le fichier entier).
- #strong[VariableDescriptionsSelector];, #strong[VariableUnitsSelector]; : pointeurs JSON des descriptions et des unités des variables.
- #strong[ImportErrorRule];, #strong[MissingRule]; : #strong['fill']; (défaut), #strong['error'];, #strong['omitrow']; ou #strong['omitvar'];.
- #strong[RepeatedNodeRule]; : #strong['addcol']; (défaut), #strong['ignore']; ou #strong['error'];.
- #strong[AllowComments];, #strong[AllowInfAndNaN];, #strong[AllowTrailingCommas]; : acceptent les commentaires, les valeurs Inf et NaN, les virgules finales (défaut : #raw("true");). L'objet utilise la classe Nelson #strong[nelson.io.json.JSONImportOptions];.


== Exemple

Sélectionner une valeur imbriquée de chaque ligne :

``````matlab
f = [tempdir, 'students.json']; fid = fopen(f, 'w'); fprintf(fid, '%s', '[{"Name": {"FirstName": "Priya"}}, {"Name": {"FirstName": "Conor"}}]'); fclose(fid); opts = jsonImportOptions('VariableSelectors', "/Name/FirstName", 'TableSelector', "") T = readtable(f, opts)
``````


== Voir aussi

#nlink(<spreadsheet:detectImportOptions>)[detectImportOptions];, #nlink(<spreadsheet:readtable>)[readtable];, #nlink(<spreadsheet:readtimetable>)[readtimetable];, #nlink(<json:jsondecode>)[jsondecode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
