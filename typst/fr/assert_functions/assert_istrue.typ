#import "nelson_help.typ": *

= assert\_istrue <assert_functions:assert_istrue>

Nom historique de asserts.istrue.

== Syntaxe

- #raw("assert_istrue(condition)");
- #raw("assert_istrue(condition, message)");
- #raw("[res, msg] = assert_istrue(condition)");
- #raw("[res, msg] = assert_istrue(condition, message)");

== Argument d'entrée

/ condition: Scalaire ou tableau logique a tester. Chaque entree doit etre true.
/ message: Message d'echec personnalise optionnel.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: Message d'echec de l'assertion, vide en cas de succes.

== Description

#strong[assert\_istrue]; est conservee pour compatibilite.

 Pour la documentation complete, utiliser #nlink(<assert_functions:asserts.istrue>)[asserts.istrue];.


== Exemples

Appel historique

``````matlab
assert_istrue(3 == 3);
``````

Appel canonique

``````matlab
asserts.istrue(true);
``````


== Voir aussi

#nlink(<assert_functions:asserts.istrue>)[asserts.istrue];, #nlink(<assert_functions:assert>)[assert];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [documentee comme nom historique de asserts.istrue],
)

// Auteur: Allan CORNET
