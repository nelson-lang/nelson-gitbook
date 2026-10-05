#import "nelson_help.typ": *

= assert\_isfalse <assert_functions:assert_isfalse>

Nom historique de asserts.isfalse.

== Syntaxe

- #raw("assert_isfalse(condition)");
- #raw("assert_isfalse(condition, message)");
- #raw("[res, msg] = assert_isfalse(condition)");
- #raw("[res, msg] = assert_isfalse(condition, message)");

== Argument d'entrée

/ condition: Scalaire ou tableau logique a tester. Chaque entree doit etre false.
/ message: Message d'echec personnalise optionnel.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: Message d'echec de l'assertion, vide en cas de succes.

== Description

#strong[assert\_isfalse]; est conservee pour compatibilite.

 Pour la documentation complete, utiliser #nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse];.


== Exemples

Appel historique

``````matlab
assert_isfalse(3 == 4);
``````

Appel canonique

``````matlab
asserts.isfalse(false);
``````


== Voir aussi

#nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse];, #nlink(<assert_functions:assert>)[assert];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [documentee comme nom historique de asserts.isfalse],
)

// Auteur: Allan CORNET
