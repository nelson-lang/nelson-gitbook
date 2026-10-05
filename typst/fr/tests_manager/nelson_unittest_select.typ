#import "nelson_help.typ": *

= nelson.unittest.select <tests_manager:nelson_unittest_select>

Filtrer une suite de tests decouverte.

== Syntaxe

- #raw("selected = nelson.unittest.select(suite, Name, Value)");

== Argument d'entrée

/ suite: TestSuite retournee par nelson.unittest.discover.
/ Name, Value: options de selection : Name, Module, File, Kind, Tags, ExcludeTags, Match et Exclude.

== Argument de sortie

/ selected: TestSuite filtree conservant les metadonnees de filtrage.

== Description

#strong[nelson.unittest.select]; applique les filtres de selection sans executer les tests.

 #strong[Kind]; accepte #strong[test];, #strong[bug];, #strong[bench];, #strong[all\_tests]; et #strong[all];.


== Exemple

``````matlab

suite = nelson.unittest.select(suite, 'Tags', {'fast'}, 'ExcludeTags', {'gui'});

``````


== Voir aussi

#nlink(<tests_manager:nelson_unittest_discover>)[nelson.unittest.discover];, #nlink(<tests_manager:nelson_unittest_plan>)[nelson.unittest.plan];.
