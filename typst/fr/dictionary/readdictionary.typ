#import "nelson_help.typ": *

= readdictionary <dictionary:readdictionary>

Lit un dictionnaire depuis un fichier.

== Syntaxe

- #raw("d = readdictionary(filename)");
- #raw("d = readdictionary(filename, Name, Value)");

== Argument d'entrée

/ filename: scalaire texte : nom du fichier source.

== Argument de sortie

/ d: scalaire : objet dictionnaire.

== Description

#strong[d \= readdictionary(filename)]; lit un objet JSON depuis #strong[filename]; et retourne un dictionnaire.

 Les noms des membres de l'objet JSON deviennent des cles string du dictionnaire. Les valeurs sont converties en valeurs Nelson. Les tableaux JSON sont decodes comme cellules colonnes. Si les valeurs JSON ont des types differents ou des tailles non scalaires, le type des valeurs du dictionnaire est #raw("cell");.

 #strong[d \= readdictionary(filename, Name, Value)]; personnalise la lecture. Les options supportees sont :

 

- #strong[FileType :]; type de fichier. Les valeurs supportees sont #raw("'auto'"); et #raw("'json'");. Seuls les fichiers dictionnaire JSON sont actuellement supportes.
- #strong[ValueType :]; type cible utilise pour convertir les valeurs decodees.
- #strong[AllowTrailingCommas :]; scalaire logique. Si vrai, les virgules finales dans les objets JSON sont acceptees. La valeur par defaut est #raw("true");.
- #strong[AllowComments :]; scalaire logique. Si vrai, les commentaires de style JavaScript sont ignores avant l'analyse. La valeur par defaut est #raw("true");.
- #strong[AllowInfAndNaN :]; scalaire logique. Si vrai, les jetons #raw("NaN");, #raw("Infinity");, #raw("Inf");, #raw("-Infinity"); et #raw("-Inf"); sont acceptes. La valeur par defaut est #raw("true");.
- #strong[DateLocale :]; accepte pour compatibilite. #strong[DictionaryNodeName]; et #strong[DictionarySelector]; sont acceptes comme noms d'option, mais ils ne sont pas supportes pour les fichiers dictionnaire JSON.


== Exemples

Lecture d'un dictionnaire ecrit en JSON.

``````matlab
filename = [tempdir(), 'products.json'];
d = dictionary(["apple", "banana"], [1.2, 2.3]);
writedictionary(d, filename);
r = readdictionary(filename)
``````

Lecture avec un type explicite.

``````matlab
filename = [tempdir(), 'counts.json'];
filewrite(filename, '{"a": 1, "b": 2}');
d = readdictionary(filename, 'ValueType', 'single')
``````


== Voir aussi

#nlink(<dictionary:writedictionary>)[writedictionary];, #nlink(<dictionary:dictionary>)[dictionary];, #nlink(<hdf5:loadnh5>)[loadnh5];, #nlink(<matio:loadmat>)[loadmat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
