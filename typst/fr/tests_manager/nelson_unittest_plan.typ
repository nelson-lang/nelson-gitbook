#import "nelson_help.typ": *

= nelson.unittest.plan <tests_manager:nelson_unittest_plan>

Creer un plan d'execution pour une suite de tests.

== Syntaxe

- #raw("plan = nelson.unittest.plan(suite)");
- #raw("plan = nelson.unittest.plan(suite, Name, Value)");

== Argument d'entrée

/ suite: TestSuite retournee par nelson.unittest.discover ou nelson.unittest.select.
/ Name, Value: options de planification : Workers, ShardIndex, ShardCount, Shuffle, Seed et options de ressources.

== Argument de sortie

/ plan: structure TestPlan contenant cases, workers, shard, order et groupes de ressources.

== Description

#strong[nelson.unittest.plan]; prepare les cas selectionnes pour l'execution.

 Les benchs et les tests qui exigent une execution sequentielle sont separes des tests parallelisables.


== Exemple

``````matlab

plan = nelson.unittest.plan(suite, 'Workers', 4, 'ShardIndex', 1, 'ShardCount', 2);

``````


== Voir aussi

#nlink(<tests_manager:nelson_unittest_select>)[nelson.unittest.select];, #nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];.
