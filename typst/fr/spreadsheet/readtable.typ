#import "nelson_help.typ": *

= readtable <spreadsheet:readtable>

Créer une table à partir d'un fichier.

== Syntaxe

- #raw("T = readtable(filename)");
- #raw("T = readtable(filename, opts)");
- #raw("T = readtable(filename, 'TextType', type)");
- #raw("T = readtable(filename, Name, Value)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier source.
/ opts: Objet nelson.io.text.DelimitedTextImportOptions
/ type: une chaîne : #strong['char']; (défaut, colonnes de texte en tableau de cellules de vecteurs de caractères) ou #strong['string']; (colonnes de texte en tableau string).
/ Name, Value: arguments nom-valeur optionnels. Pour un fichier JSON : FileType, TableSelector, TableNodeName, VariableSelectors, RowNamesSelector, VariableUnitsSelector, VariableDescriptionsSelector, RepeatedNodeRule, ParsingMode, AllowComments, AllowInfAndNaN, AllowTrailingCommas, MissingRule, ImportErrorRule et TextType.

== Argument de sortie

/ T: une table.

== Description

#strong[T \= readtable(filename)]; crée une table en important des données orientées colonne depuis un fichier texte ou tableur.

 #strong[T \= readtable(filename, opts)]; crée une table en utilisant les paramètres définis dans l'objet d'options d'importation#strong[opts];. L'objet d'options d'importation permet de personnaliser la façon dont #strong[readtable]; interprète le fichier, offrant un meilleur contrôle, de meilleures performances et la possibilité de réutiliser la configuration comparé à la syntaxe par défaut.

 #strong[T \= readtable(filename, 'Range', range)]; lit uniquement le bloc rectangulaire du fichier sélectionné par #strong[range];. Pour un fichier texte délimité, #strong[range]; peut être donné sous forme de cellules de coin (#strong['A1:B5']; ou un coin unique #strong['A2'];), d'une plage de colonnes (#strong['A:B'];), d'une plage de lignes (#strong['2:4'];) ou d'un vecteur numérique #strong[\[premiereLigne premiereColonne derniereLigne derniereColonne\]];. Lorsque la première ligne de la plage est composée uniquement de texte non numérique, elle est utilisée pour les noms de variables, sinon les colonnes sont nommées #strong[Var1];, #strong[Var2];, etc.

 L'option nom-valeur #strong['Sheet']; s'applique uniquement aux fichiers tableur et n'est pas prise en charge pour un fichier texte délimité.

 #strong[Fichiers JSON]; : un fichier d'extension #strong[.json];, ou tout fichier lu avec #strong['FileType', 'json'];, est décodé avec #strong[jsondecode]; puis converti en table.

 

- Un tableau d'objets donne une ligne par objet et les clés des objets deviennent les variables. Les objets imbriqués sont aplatis : chaque valeur feuille devient une variable nommée d'après sa clé.
- Un objet dont toutes les valeurs sont des objets donne une ligne par clé. Utilisez #strong["Keys"]; dans #strong[VariableSelectors]; pour lire les clés.
- Lorsque la racine du fichier est un objet, le premier tableau d'objets trouvé est lu.
- Les nombres donnent des double, true et false des logical, le texte des string (char avec #strong['TextType', 'char'];), le texte de date et d'heure des datetime ou duration.
- Les valeurs null et les clés absentes sont des valeurs manquantes : NaN, \<missing\> ou false pour une variable logique.
- Une valeur tableau JSON (noeud répété) donne une variable matrice avec une colonne par élément. Arguments nom-valeur JSON :

 

- #strong[TableSelector]; : pointeur JSON RFC 6901 de la table. #strong[""]; désigne le fichier entier.
- #strong[TableNodeName]; : nom de la clé des données de la table.
- #strong[VariableSelectors]; : pointeurs JSON des variables, relatifs à un objet ligne. #strong["Keys"]; lit les clés des objets.
- #strong[RowNamesSelector]; : pointeur JSON des noms de lignes.
- #strong[VariableUnitsSelector];, #strong[VariableDescriptionsSelector]; : pointeurs JSON, depuis la racine du fichier, d'un objet associant les noms de variables à leurs unités ou descriptions.
- #strong[RepeatedNodeRule]; : #strong['addcol']; (défaut), #strong['ignore']; (premier élément seulement) ou #strong['error'];.
- #strong[ParsingMode]; : #strong['lenient']; (défaut) ou #strong['strict'];. Il fixe #strong[AllowComments]; (commentaires #strong[\/\/]; et #strong[\/\* \*\/];), #strong[AllowInfAndNaN]; (Inf, -Inf, Infinity, NaN) et #strong[AllowTrailingCommas];, qui peuvent aussi être donnés un par un.
- #strong[MissingRule];, #strong[ImportErrorRule]; : #strong['fill']; (défaut), #strong['error'];, #strong['omitrow']; ou #strong['omitvar'];. Avec un fichier JSON, #strong[opts]; est un objet #strong[nelson.io.json.JSONImportOptions]; (voir #strong[jsonImportOptions];).


== Exemples

``````matlab
  Names = {'John'; 'Alice'; 'Bob'; 'Diana'};  Age = [28; 34; 22; 30];  Height = [175; 160; 180; 165];  Weight = [70; 55; 80; 60];  T1 = table(Names, Age, Height, Weight);  writetable(T1, [tempdir,'readtable_1.csv'])  T2 = readtable([tempdir,'readtable_1.csv'])  
``````

``````matlab
  Names = {'John'; 'Alice'; 'Bob'; 'Diana'};  Age = [28; 34; 22; 30];  Height = [175; 160; 180; 165];  Weight = [70; 55; 80; 60];  T = table(Names, Age, Height, Weight);  writetable(T, [tempdir,'readtable_1.csv'])  options = detectImportOptions([tempdir,'readtable_1.csv']);  T1 = readtable([tempdir,'readtable_1.csv'], options)  options.DataLines = [1 Inf]  T2 = readtable([tempdir,'readtable_1.csv'], options)  
``````

Lire un fichier JSON :

``````matlab
T = table([1; 2; NaN], ["a"; "b"; missing], 'VariableNames', {'x', 'name'}); f = [tempdir, 'readtable_json.json']; writetable(T, f); T2 = readtable(f) opts = detectImportOptions(f, 'VariableSelectors', '/name'); T3 = readtable(f, opts)
``````


== Voir aussi

#nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];, #nlink(<spreadsheet:writetable>)[writetable];, #nlink(<spreadsheet:detectImportOptions>)[detectImportOptions];, #nlink(<spreadsheet:readcell>)[readcell];, #nlink(<stream_manager:fileread>)[fileread];, #nlink(<spreadsheet:jsonImportOptions>)[jsonImportOptions];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
  [2.0.0], [Fichiers JSON : lecture de données JSON sous forme de table.],
)

// Auteur: Allan CORNET
