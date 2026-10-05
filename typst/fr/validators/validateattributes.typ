#import "nelson_help.typ": *

= validateattributes <validators:validateattributes>

Verifie les classes et attributs demandes pour un tableau.

== Syntaxe

- #raw("validateattributes(A, classes, attributes)");
- #raw("validateattributes(A, classes, attributes, argIndex)");
- #raw("validateattributes(A, classes, attributes, funcName)");
- #raw("validateattributes(A, classes, attributes, funcName, varName)");
- #raw("validateattributes(A, classes, attributes, funcName, varName, argIndex)");

== Argument d'entrée

/ A: tableau ou objet a verifier.
/ classes: noms de classes acceptes, sous forme de vecteur de caracteres, tableau de chaines ou cellule de vecteurs de caracteres.
/ attributes: attributs requis, sous forme de cellule ou tableau de chaines. Les attributs qui demandent une valeur doivent etre suivis immediatement par cette valeur.
/ argIndex: entier positif utilise dans les messages d'erreur pour indiquer la position de l'argument.
/ funcName: nom de fonction utilise dans les identifiants d'erreur generes.
/ varName: nom de variable utilise dans les messages d'erreur generes.

== Description

#strong[validateattributes]; emet une erreur si #strong[A]; n'appartient pas a au moins une classe demandee ou ne satisfait pas tous les attributs demandes. La fonction ne renvoie aucune sortie lorsque la verification reussit.

 #strong[classes]; accepte les noms de classes concretes et les noms de classes personnalisees testes avec #strong[isa];. Les alias #strong[numeric];, #strong[integer]; et #strong[float]; sont aussi pris en charge.

 Les attributs de forme pris en charge sont #strong[2d];, #strong[3d];, #strong[column];, #strong[row];, #strong[scalar];, #strong[scalartext];, #strong[vector];, #strong[square];, #strong[diag];, #strong[nonempty]; et #strong[nonsparse];.

 Les attributs de taille avec valeur sont #strong[size];, #strong[numel];, #strong[ncols];, #strong[nrows]; et #strong[ndims];. Pour #strong[size];, utilisez #strong[NaN]; dans une dimension attendue pour ignorer cette dimension.

 Les attributs de valeur pris en charge sont #strong[finite];, #strong[nonnan];, #strong[binary];, #strong[even];, #strong[odd];, #strong[integer];, #strong[real];, #strong[nonnegative];, #strong[nonpositive];, #strong[negative];, #strong[nonzero]; et #strong[positive];.

 Les attributs de plage sont #strong[\>];, #strong[\>\=];, #strong[\<]; et #strong[\<\=];. La valeur de comparaison doit suivre le nom de l'attribut.

 Les attributs de monotonie sont #strong[decreasing];, #strong[increasing];, #strong[nondecreasing]; et #strong[nonincreasing];. La monotonie est verifiee colonne par colonne.


== Exemples

Verifier une classe, une forme et des valeurs.

``````matlab
validateattributes([1 2 3], {'numeric'}, {'row', 'vector', 'positive'})
``````

Verifier une taille partiellement specifiee.

``````matlab
A = ones(2, 3, 4);
validateattributes(A, {'numeric'}, {'3d', 'size', [2 NaN 4], 'ndims', 3})
``````

Verifier la monotonie colonne par colonne.

``````matlab
A = [1 4; 2 4; 3 5];
validateattributes(A, {'numeric'}, {'nondecreasing'})
``````

Utiliser la verification dans un analyseur d'entrees.

``````matlab
p = inputParser();
addRequired(p, 'name', @(x) validateattributes(x, {'char'}, {'nonempty'}));
addOptional(p, 'id', 1, @(x) validateattributes(x, {'numeric'}, {'scalar', 'positive'}));
parse(p, 'item', 3);
p.Results
``````


== Voir aussi

#nlink(<validators:validatestring>)[validatestring];, #nlink(<validators:inputParser>)[inputParser];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
