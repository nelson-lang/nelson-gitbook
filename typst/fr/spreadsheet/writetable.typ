#import "nelson_help.typ": *

= writetable <spreadsheet:writetable>

Écrire une table dans un fichier.

== Syntaxe

- #raw("writetable(T)");
- #raw("writetable(T, filename)");
- #raw("writetable(..., Name, Value)");

== Argument d'entrée

/ T: Une table à écrire dans un fichier.
/ filename: Une chaîne spécifiant le nom du fichier de destination.

== Description

#strong[writetable(T)]; écrit la table #strong[T]; dans un fichier texte délimité par des virgules.

 Le nom de fichier est dérivé du nom de la variable de la table dans l'espace de travail, avec l'extension#raw(".txt");ajoutée.

 Si le nom de fichier ne peut pas être dérivé du nom de la table, le nom de fichier par défaut#raw("table.txt");est utilisé.

 Formats de sortie pris en charge :

 

- #strong[Text files:]; Each variable in#strong[T]; becomes a column, and variable names serve as column headers in the first line.
- #strong[Fichiers XML :]; chaque variable de #strong[T]; devient un nœud XML, les noms de variables servant de noms d'éléments. Pour préciser explicitement le nom du fichier, utilisez #strong[writetable(T, filename)];. Le format de fichier est déterminé par l'extension :

 

- #strong[.txt];, #strong[.dat];,#strong[.csv]; : fichiers texte délimités.
- #strong[.xml]; : fichiers XML. #strong[Additional options:]; Use #strong[writetable(..., Name, Value)]; for customization:

 

- #strong[WriteRowNames :]; inclure les noms de ligne dans le fichier de sortie (par défaut :#raw("false");).
- #strong[FileType :]; spécifier le format de fichier (#raw("\n          'text'\n        ");ou#raw("\n          'xml'\n        ");).
- #strong[WriteVariableNames :]; inclure les noms de variables comme en-têtes de colonne dans les fichiers texte (par défaut :#raw("true");).
- #strong[WriteMode :]; spécifier le mode d'écriture (#raw("\n          'overwrite'\n        "); ou #raw("\n          'append'\n        ");).
- #strong[Delimiter :]; définir le délimiteur de champ pour les fichiers texte (#raw("\n          ','\n        ");, #raw("\n          '\\t'\n        ");, etc.).
- #strong[QuoteStrings :]; contrôler la façon dont le texte est cité dans les fichiers texte (#raw("\n          'minimal'\n        ");, #raw("\n          'all'\n        "); ou #raw("\n          'none'\n        ");).
- #strong[AttributeSuffix :]; spécifier le suffixe d'attribut pour les fichiers XML (par défaut :#raw("\n          'Attribute'\n        ");).
- #strong[RowNodeName :]; spécifier le nom du nœud de ligne XML (par défaut :#raw("\n          'row'\n        ");).
- #strong[TableNodeName :]; spécifier le nom du nœud racine XML (par défaut :#raw("\n          'table'\n        ");). #strong[Fichiers JSON]; (extension #strong[.json]; ou #strong['FileType', 'json'];) : la table est écrite comme un tableau JSON avec un objet par ligne ; les clés sont les noms des variables.

 

- Les nombres et valeurs logiques sont écrits comme nombres JSON et true ou false, les valeurs texte, categorical, datetime et duration comme chaînes JSON (datetime et duration utilisent leur format d'affichage).
- Les valeurs manquantes (\<missing\>, NaT, \<undefined\>) sont écrites null. Une variable à plusieurs colonnes donne un tableau JSON par ligne.
- #strong[PrettyPrint]; : indente le texte avec quatre espaces (défaut : #raw("true");).
- #strong[PreserveInfAndNaN]; : écrit les valeurs Inf et NaN sous la forme Inf, -Inf et NaN (défaut : #raw("true");) ; avec #raw("false"); elles sont écrites null.
- #strong[WriteRowNames]; : écrit les noms de lignes comme première valeur de chaque objet, avec pour clé le premier nom de dimension.
== Exemples

Examples demonstrating various usages of #strong[writetable];.

``````matlab
T = table([1; 2; 3], {'A'; 'B'; 'C'}, [10.5; 20.7; 30.2], 'VariableNames', {'ID', 'Name', 'Value'});
T.Value_Attribute = {'High'; 'Medium'; 'Low'};

% Basic usage - write to text file
writetable(T)

% Write to specific CSV file with custom delimiter
writetable(T, 'data.csv', 'Delimiter', ';')

% Write to XML with custom node names
writetable(T, 'data.xml', 'RowNodeName', 'record', 'TableNodeName', 'dataset')

% Append to existing file with row names
writetable(T, 'data.txt', 'WriteMode', 'append', 'WriteRowNames', true)
``````

Écrire une table dans un fichier JSON :

``````matlab
T = table([1; NaN], ["a"; missing], [true; false], 'VariableNames', {'x', 'name', 'ok'}); f = [tempdir, 'writetable_json.json']; writetable(T, f); fileread(f) writetable(T, f, 'PrettyPrint', false, 'PreserveInfAndNaN', false); fileread(f)
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale.],
  [2.0.0], [Fichiers JSON : FileType json, PrettyPrint et PreserveInfAndNaN.],
)

// Auteur: Allan CORNET
