#import "nelson_help.typ": *

= asserts.type <assert_functions:asserts.type>

Verifie qu'une valeur a l'une des classes attendues.

== Syntaxe

- #raw("asserts.type(value, expectedTypes)");
- #raw("[res, msg] = asserts.type(value, expectedTypes)");

== Argument d'entrée

/ value: Valeur a tester.
/ expectedTypes: Nom de classe ou liste de noms de classes sous forme de tableau de strings ou cellule de vecteurs de caracteres.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

L'assertion reussit lorsque class(value) est present dans expectedTypes.

 La liste des types attendus ne doit pas etre vide.


== Exemples

One of several classes

``````matlab
asserts.type(single(1), {'double', 'single'});
``````

Capture a type failure

``````matlab
[res, msg] = asserts.type(int32(1), {'double', 'single'});
``````


== Voir aussi

#nlink(<assert_functions:asserts.class>)[asserts.class];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
