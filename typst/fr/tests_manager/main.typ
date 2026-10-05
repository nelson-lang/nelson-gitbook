#import "nelson_help.typ": *

= Outils de tests pour Nelson

The Test Manager de Nelson fournit des outils pour les tests automatisés de code, permettant aux utilisateurs de valider les fonctionnalités, d'assurer la correction et de gérer efficacement les cas de test.

 Ce module prend en charge la création de sorties de référence, l'exécution de suites de tests et la désactivation conditionnelle des tests.

== Functions

- #nlink(<tests_manager:bench_run>)[bench\_run]: Exécuter les benchmarks
- #nlink(<tests_manager:nelson_unittest>)[nelson.unittest]: Namespace moderne du runner de tests
- #nlink(<tests_manager:nelson_unittest_assume>)[nelson.unittest.assume]: Sauter un test quand une precondition runtime n'est pas satisfaite.
- #nlink(<tests_manager:nelson_unittest_discover>)[nelson.unittest.discover]: Decouvrir les fichiers de test et retourner une suite structuree.
- #nlink(<tests_manager:nelson_unittest_makeref>)[nelson.unittest.makeref]: Creer un fichier de reference pour un test.
- #nlink(<tests_manager:nelson_unittest_plan>)[nelson.unittest.plan]: Creer un plan d'execution pour une suite de tests.
- #nlink(<tests_manager:nelson_unittest_report>)[nelson.unittest.report]: Ecrire les rapports du runner de tests et de benches.
- #nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run]: Executer des tests avec le runner moderne.
- #nlink(<tests_manager:nelson_unittest_select>)[nelson.unittest.select]: Filtrer une suite de tests decouverte.
- #nlink(<tests_manager:nelson_unittest_skip>)[nelson.unittest.skip]: Ignorer le test courant.
- #nlink(<tests_manager:nelson_unittest_tuneReuse>)[nelson.unittest.tuneReuse]: Calibrer la reutilisation explicite des processus pour les tests et les benches.
- #nlink(<tests_manager:nelson_unittest_tuneWeights>)[nelson.unittest.tuneWeights]: Calibrer les poids de planification avec les durees mesurees.
- #nlink(<tests_manager:test_makeref>)[test\_makeref]: Crée un fichier '.ref' pour un test
- #nlink(<tests_manager:test_run>)[test\_run]: Exécute les tests
- #nlink(<tests_manager:test_skip_testsuite>)[skip\_testsuite]: Sauter la suite de tests selon une condition


#nested[
#pagebreak(weak: true)
#include "bench_run.typ"
#pagebreak(weak: true)
#include "nelson_unittest.typ"
#pagebreak(weak: true)
#include "nelson_unittest_assume.typ"
#pagebreak(weak: true)
#include "nelson_unittest_discover.typ"
#pagebreak(weak: true)
#include "nelson_unittest_makeref.typ"
#pagebreak(weak: true)
#include "nelson_unittest_plan.typ"
#pagebreak(weak: true)
#include "nelson_unittest_report.typ"
#pagebreak(weak: true)
#include "nelson_unittest_run.typ"
#pagebreak(weak: true)
#include "nelson_unittest_select.typ"
#pagebreak(weak: true)
#include "nelson_unittest_skip.typ"
#pagebreak(weak: true)
#include "nelson_unittest_tuneReuse.typ"
#pagebreak(weak: true)
#include "nelson_unittest_tuneWeights.typ"
#pagebreak(weak: true)
#include "test_makeref.typ"
#pagebreak(weak: true)
#include "test_run.typ"
#pagebreak(weak: true)
#include "test_skip_testsuite.typ"
]
