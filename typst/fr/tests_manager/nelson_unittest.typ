#import "nelson_help.typ": *

= nelson.unittest <tests_manager:nelson_unittest>

Namespace moderne du runner de tests

== Syntaxe

- #raw("suite = nelson.unittest.discover(targets)");
- #raw("suite = nelson.unittest.select(suite, Name, Value)");
- #raw("plan = nelson.unittest.plan(suite, Name, Value)");
- #raw("results = nelson.unittest.run(targets, Name, Value)");
- #raw("results = nelson.unittest.run(plan, Name, Value)");
- #raw("proposal = nelson.unittest.tuneWeights(results, Name, Value)");
- #raw("proposal = nelson.unittest.tuneReuse(targets, Name, Value)");
- #raw("status = nelson.unittest.report(results, Name, Value)");
- #raw("nelson.unittest.assume(condition, reason)");

== Argument d'entrée

/ targets: un nom de module, un nom de fichier, un dossier ou un tableau de cellules de cibles.
/ Name, Value: options de selection, planification, execution et reporting.

== Argument de sortie

/ suite: structure TestSuite contenant les entrees TestCase decouvertes.
/ plan: structure TestPlan contenant les tests selectionnes, le shard, les workers et les groupes de ressources.
/ results: structure TestRunResult contenant le resume, les cas normalises, la registry et les donnees brutes de compatibilite.

== Description

Le namespace #strong[nelson.unittest]; fournit l'API moderne du runner de tests.

 Le runner separe la decouverte, la selection, la planification, l'execution et le reporting tout en conservant les wrappers de compatibilite #strong[test\_run];, #strong[test\_makeref]; et #strong[skip\_testsuite];.

 #strong[test\_run];, #strong[test\_makeref]; et #strong[skip\_testsuite]; sont des points d'entree de compatibilite implementes au dessus de ce namespace.

 Les details internes du runner sont prives et ne font pas partie de l'API utilisateur.

 Chaque test et chaque bench est execute dans un processus enfant supervise par le runner. Il n'existe pas de mode d'execution in-process pour les tests ou les benches.

 Le superviseur natif capture les sorties, applique les timeouts et retourne des diagnostics comme commande, pid, timeout, raison et job id.

 Les cas normalises exposent ces details natifs dans #strong[results.cases(k).diagnostics];. La structure diagnostics contient #strong[kind];, #strong[index];, #strong[metadata];, #strong[job\_id];, #strong[pid];, #strong[timeout];, #strong[reason];, #strong[executable]; et #strong[process\_arguments];.

 Les options de selection incluent #strong[Name];, #strong[Module];, #strong[File];, #strong[Kind];, #strong[Tags];, #strong[ExcludeTags];, #strong[Match]; et #strong[Exclude];.

 #strong[Kind]; accepte #strong[test];, #strong[bug];, #strong[bench];, #strong[all\_tests]; et #strong[all];.

 Les options d'execution incluent #strong[Workers];, #strong[Timeout];, #strong[StopOnFail];, #strong[Retry];, #strong[RetryOnlyOn];, #strong[Shuffle];, #strong[Seed];, #strong[ShardIndex]; et #strong[ShardCount];.

 La reutilisation de processus est explicite. Les fichiers de test et de bench sans tag #strong[\<--REUSE PROCESS--\>]; sont executes dans des processus enfants separes. Les fichiers tagues peuvent reutiliser le meme processus enfant quand leur mode et leurs ressources le permettent.

 Le superviseur natif planifie les fichiers avec une file dynamique ponderee. Utilisez #strong[\<--WEIGHT N--\>]; pour definir un poids de planification positif.

 #strong[nelson.unittest.tuneWeights]; peut calculer puis appliquer explicitement ces poids versionnes dans les sources depuis un TestRunResult. Cette fonction n'utilise pas de cache de durees et simule les changements par defaut.

 #strong[nelson.unittest.tuneReuse]; peut auditer les tags de reutilisation existants ou proposer explicitement des ajouts. La fonction utilise des campagnes natives isolees et reutilisees avec des ordres deterministes, ne consulte aucun cache et simule les changements par defaut.

 Si un worker reutilisable tague crashe ou ne retourne aucun resultat, le runner relance une fois le fichier avec le chemin isole. Les timeouts sont rapportes directement.

 La decouverte relit toujours les metadonnees et les tags courants. Les resultats sont affiches progressivement dans un ordre stable avec un temps d'execution sur chaque ligne.

 #strong[LogDir]; ecrit un fichier log JSON par cas de test normalise quand il est demande.

 Les formats de rapport supportes sont #strong[console];, #strong[json];, #strong[junit];, #strong[tap]; et #strong[html];. JUnit produit du XML, TAP suit TAP13 et HTML produit un rapport autonome dans un fichier unique.

 Les rapports HTML incluent les cas les plus lents, un resume par module, des tables de cas triables, des filtres rapides, des commandes de reproduction, les donnees JSON embarquees et un sidecar JSON a cote du fichier HTML.


== Exemple

``````matlab

suite = nelson.unittest.discover('string', 'Kind', 'all_tests');
suite = nelson.unittest.select(suite, 'Match', 'strfind');
plan = nelson.unittest.plan(suite, 'Workers', 1);
results = nelson.unittest.run(plan, 'Format', 'json', 'OutputFile', [tempdir(), 'tests.json']);
proposal = nelson.unittest.tuneWeights(results);
reuseProposal = nelson.unittest.tuneReuse('string');
nelson.unittest.report(results, 'Format', 'tap', 'OutputFile', [tempdir(), 'tests.tap']);
nelson.unittest.report(results, 'Format', 'html', 'OutputFile', [tempdir(), 'tests.html']);

``````


== Voir aussi

#nlink(<tests_manager:test_run>)[test\_run];, #nlink(<tests_manager:test_makeref>)[test\_makeref];, #nlink(<tests_manager:test_skip_testsuite>)[skip\_testsuite];, #nlink(<tests_manager:nelson_unittest_tuneWeights>)[nelson.unittest.tuneWeights];, #nlink(<tests_manager:nelson_unittest_tuneReuse>)[nelson.unittest.tuneReuse];.
