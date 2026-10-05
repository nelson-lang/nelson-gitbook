#import "nelson_help.typ": *

= assert\_isequal <assert_functions:assert_isequal>

Nom historique de asserts.isequal.

== Syntaxe

- #raw("assert_isequal(computed, expected)");
- #raw("assert_isequal(computed, expected, message)");
- #raw("res = assert_isequal(computed, expected)");
- #raw("[res, msg] = assert_isequal(computed, expected)");

== Argument d'entrée

/ computed: Valeur calculee.
/ expected: Valeur attendue.
/ message: Message d'echec personnalise optionnel.

== Argument de sortie

/ res: true si les valeurs sont egales, false sinon.
/ msg: Message d'echec de l'assertion, vide en cas de succes.

== Description

#strong[assert\_isequal]; est conservee pour compatibilite.

 Pour la documentation complete, utiliser #nlink(<assert_functions:asserts.isequal>)[asserts.isequal];.


== Fonction(s) utilisée(s)

isequaln

== Exemples

Appel historique

``````matlab
assert_isequal([1 2], [1 2]);
``````

Appel canonique

``````matlab
asserts.isequal([1 2], [1 2]);
``````


== Voir aussi

#nlink(<assert_functions:asserts.isequal>)[asserts.isequal];, #nlink(<elementary_functions:7_indexing_dimensions.isequaln>)[isequaln];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [documentee comme nom historique de asserts.isequal],
)

// Auteur: Allan CORNET
