#import "nelson_help.typ": *

= writedictionary <dictionary:writedictionary>

Ecrit un dictionnaire dans un fichier.

== Syntaxe

- #raw("writedictionary(d, filename)");
- #raw("writedictionary(d, filename, Name, Value)");

== Argument d'entrée

/ d: scalaire : objet dictionnaire configure.
/ filename: scalaire texte : nom du fichier de destination.

== Description

#strong[writedictionary(d, filename)]; ecrit le dictionnaire configure #strong[d]; dans un fichier JSON.

 Les cles du dictionnaire sont ecrites comme noms de membres de l'objet JSON. Les cles doivent etre des scalaires texte, numeriques ou logiques. Les valeurs peuvent etre des scalaires, tableaux, cellules, structures ou tableaux de structures lorsqu'elles peuvent etre representees comme valeurs JSON.

 #strong[writedictionary(d, filename, Name, Value)]; personnalise l'ecriture. Les options supportees sont :

 

- #strong[FileType :]; type de fichier. Les valeurs supportees sont #raw("'auto'"); et #raw("'json'");. Seuls les fichiers dictionnaire JSON sont actuellement supportes.
- #strong[PrettyPrint :]; scalaire logique. Si vrai, ecrit un JSON indente. La valeur par defaut est #raw("true");.
- #strong[PreserveInfAndNaN :]; scalaire logique. Si vrai, ecrit les jetons #raw("NaN");, #raw("Infinity"); et #raw("-Infinity"); pour les valeurs numeriques non finies. La valeur par defaut est #raw("true");. La persistance MAT et NH5 des variables dictionnaire est geree par #strong[savemat];\/#strong[loadmat]; et #strong[savenh5];\/#strong[loadnh5];.


== Exemples

Ecriture puis lecture d'un dictionnaire JSON.

``````matlab
filename = [tempdir(), 'products.json'];
d = dictionary(["apple", "banana"], [1.2, 2.3]);
writedictionary(d, filename);
r = readdictionary(filename)
``````

Ecriture de valeurs heterogenes.

``````matlab
filename = [tempdir(), 'mixed_dictionary.json'];
d = dictionary(["vector", "data"], {[1 NaN Inf], struct('name', "Nelson")});
writedictionary(d, filename, 'PrettyPrint', false);
r = readdictionary(filename)
``````


== Voir aussi

#nlink(<dictionary:readdictionary>)[readdictionary];, #nlink(<dictionary:dictionary>)[dictionary];, #nlink(<hdf5:savenh5>)[savenh5];, #nlink(<matio:savemat>)[savemat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
