#import "nelson_help.typ": *

= validatestring <validators:validatestring>

Verifie qu'un texte correspond a une valeur autorisee.

== Syntaxe

- #raw("matched = validatestring(str, validStrings)");
- #raw("matched = validatestring(str, validStrings, argIndex)");
- #raw("matched = validatestring(str, validStrings, funcName)");
- #raw("matched = validatestring(str, validStrings, funcName, varName)");
- #raw("matched = validatestring(str, validStrings, funcName, varName, argIndex)");

== Argument d'entrée

/ str: texte a verifier, sous forme de vecteur de caracteres ou chaine scalaire.
/ validStrings: valeurs de texte autorisees, sous forme de vecteur de caracteres, tableau de chaines ou cellule de vecteurs de caracteres.
/ argIndex: entier positif utilise dans les messages d'erreur pour indiquer la position de l'argument.
/ funcName: nom de fonction utilise dans les identifiants d'erreur generes.
/ varName: nom de variable utilise dans les messages d'erreur generes.

== Argument de sortie

/ matched: valeur trouvee dans #strong[validStrings];. La sortie est une chaine scalaire si #strong[validStrings]; est un tableau de chaines ; sinon c'est un vecteur de caracteres.

== Description

#strong[validatestring]; accepte les correspondances exactes et les correspondances partielles de debut de texte, sans tenir compte de la casse. Les correspondances exactes sont prioritaires.

 Si une seule correspondance partielle existe, cette valeur est renvoyee. Si plusieurs correspondances partielles existent et que toutes les valeurs correspondantes forment une chaine de sous-chaines, la valeur la plus courte est renvoyee. Sinon une erreur d'ambiguite est emise.

 Les messages d'erreur peuvent inclure une position d'argument, un nom de variable et un nom de fonction selon la syntaxe utilisee.


== Exemples

Correspondances exactes et partielles sans tenir compte de la casse.

``````matlab
shape = validatestring('Rect', {'square', 'rectangle', 'triangle'});
direction = validatestring("LEFT", ["left", "right"])
``````

Correspondance la plus courte dans une chaine de correspondances partielles.

``````matlab
value = validatestring('rig', {'righteously', 'right', 'righteous'})
``````

Utiliser les arguments de contexte pour les erreurs generees.

``````matlab
units = {'cm', 'm', 'in', 'ft'};
choice = validatestring('CM', units, 'findArea', 'units', 4)
``````


== Voir aussi

#nlink(<validators:validateattributes>)[validateattributes];, #nlink(<validators:inputParser>)[inputParser];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
