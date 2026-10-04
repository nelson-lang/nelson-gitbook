# Outils de tests pour Nelson

The Test Manager de Nelson fournit des outils pour les tests automatisés de code, permettant aux
utilisateurs de valider les fonctionnalités, d'assurer la correction et de gérer efficacement les
cas de test.

Ce module prend en charge la création de sorties de référence, l'exécution de suites de tests et la
désactivation conditionnelle des tests.

## Functions

- [bench_run](bench_run.md) - Exécuter les benchmarks
- [nelson.unittest](nelson_unittest.md) - Namespace moderne du runner de tests
- [nelson.unittest.assume](nelson_unittest_assume.md) - Sauter un test quand une precondition runtime n'est pas satisfaite.
- [nelson.unittest.discover](nelson_unittest_discover.md) - Decouvrir les fichiers de test et retourner une suite structuree.
- [nelson.unittest.makeref](nelson_unittest_makeref.md) - Creer un fichier de reference pour un test.
- [nelson.unittest.plan](nelson_unittest_plan.md) - Creer un plan d'execution pour une suite de tests.
- [nelson.unittest.report](nelson_unittest_report.md) - Ecrire les rapports du runner de tests et de benches.
- [nelson.unittest.run](nelson_unittest_run.md) - Executer des tests avec le runner moderne.
- [nelson.unittest.select](nelson_unittest_select.md) - Filtrer une suite de tests decouverte.
- [nelson.unittest.skip](nelson_unittest_skip.md) - Ignorer le test courant.
- [nelson.unittest.tuneReuse](nelson_unittest_tuneReuse.md) - Calibrer la reutilisation explicite des processus pour les tests et les benches.
- [nelson.unittest.tuneWeights](nelson_unittest_tuneWeights.md) - Calibrer les poids de planification avec les durees mesurees.
- [test_makeref](test_makeref.md) - Crée un fichier '.ref' pour un test
- [test_run](test_run.md) - Exécute les tests
- [skip_testsuite](test_skip_testsuite.md) - Sauter la suite de tests selon une condition
