# nelson.unittest

Namespace moderne du runner de tests

## 📝 Syntaxe

- suite = nelson.unittest.discover(targets)
- suite = nelson.unittest.select(suite, Name, Value)
- plan = nelson.unittest.plan(suite, Name, Value)
- results = nelson.unittest.run(targets, Name, Value)
- results = nelson.unittest.run(plan, Name, Value)
- proposal = nelson.unittest.tuneWeights(results, Name, Value)
- proposal = nelson.unittest.tuneReuse(targets, Name, Value)
- status = nelson.unittest.report(results, Name, Value)
- nelson.unittest.assume(condition, reason)

## 📥 Argument d'entrée

- targets - un nom de module, un nom de fichier, un dossier ou un tableau de cellules de cibles.
- Name, Value - options de selection, planification, execution et reporting.

## 📤 Argument de sortie

- suite - structure TestSuite contenant les entrees TestCase decouvertes.
- plan - structure TestPlan contenant les tests selectionnes, le shard, les workers et les groupes de ressources.
- results - structure TestRunResult contenant le resume, les cas normalises, la registry et les donnees brutes de compatibilite.

## 📄 Description


Le namespace <b>nelson.unittest</b> fournit l'API moderne du runner de tests. 

Le runner separe la decouverte, la selection, la planification, l'execution et le reporting tout en conservant les wrappers de compatibilite <b>test\_run</b>, <b>test\_makeref</b> et <b>skip\_testsuite</b>. 

<b>test\_run</b>, <b>test\_makeref</b> et <b>skip\_testsuite</b> sont des points d'entree de compatibilite implementes au dessus de ce namespace. 

Les details internes du runner sont prives et ne font pas partie de l'API utilisateur. 

Chaque test et chaque bench est execute dans un processus enfant supervise par le runner. Il n'existe pas de mode d'execution in-process pour les tests ou les benches. 

Le superviseur natif capture les sorties, applique les timeouts et retourne des diagnostics comme commande, pid, timeout, raison et job id. 

Les cas normalises exposent ces details natifs dans <b>results.cases(k).diagnostics</b>. La structure diagnostics contient <b>kind</b>, <b>index</b>, <b>metadata</b>, <b>job\_id</b>, <b>pid</b>, <b>timeout</b>, <b>reason</b>, <b>executable</b> et <b>process\_arguments</b>. 

Les options de selection incluent <b>Name</b>, <b>Module</b>, <b>File</b>, <b>Kind</b>, <b>Tags</b>, <b>ExcludeTags</b>, <b>Match</b> et <b>Exclude</b>. 

<b>Kind</b> accepte <b>test</b>, <b>bug</b>, <b>bench</b>, <b>all\_tests</b> et <b>all</b>. 

Les options d'execution incluent <b>Workers</b>, <b>Timeout</b>, <b>StopOnFail</b>, <b>Retry</b>, <b>RetryOnlyOn</b>, <b>Shuffle</b>, <b>Seed</b>, <b>ShardIndex</b> et <b>ShardCount</b>. 

La reutilisation de processus est explicite. Les fichiers de test et de bench sans tag <b><--REUSE PROCESS--></b> sont executes dans des processus enfants separes. Les fichiers tagues peuvent reutiliser le meme processus enfant quand leur mode et leurs ressources le permettent. 

Le superviseur natif planifie les fichiers avec une file dynamique ponderee. Utilisez <b><--WEIGHT N--></b> pour definir un poids de planification positif. 

<b>nelson.unittest.tuneWeights</b> peut calculer puis appliquer explicitement ces poids versionnes dans les sources depuis un TestRunResult. Cette fonction n'utilise pas de cache de durees et simule les changements par defaut. 

<b>nelson.unittest.tuneReuse</b> peut auditer les tags de reutilisation existants ou proposer explicitement des ajouts. La fonction utilise des campagnes natives isolees et reutilisees avec des ordres deterministes, ne consulte aucun cache et simule les changements par defaut. 

Si un worker reutilisable tague crashe ou ne retourne aucun resultat, le runner relance une fois le fichier avec le chemin isole. Les timeouts sont rapportes directement. 

La decouverte relit toujours les metadonnees et les tags courants. Les resultats sont affiches progressivement dans un ordre stable avec un temps d'execution sur chaque ligne. 

<b>LogDir</b> ecrit un fichier log JSON par cas de test normalise quand il est demande. 

Les formats de rapport supportes sont <b>console</b>, <b>json</b>, <b>junit</b>, <b>tap</b> et <b>html</b>. JUnit produit du XML, TAP suit TAP13 et HTML produit un rapport autonome dans un fichier unique. 

Les rapports HTML incluent les cas les plus lents, un resume par module, des tables de cas triables, des filtres rapides, des commandes de reproduction, les donnees JSON embarquees et un sidecar JSON a cote du fichier HTML.

## 💡 Exemple



```matlab

suite = nelson.unittest.discover('string', 'Kind', 'all_tests');
suite = nelson.unittest.select(suite, 'Match', 'strfind');
plan = nelson.unittest.plan(suite, 'Workers', 1);
results = nelson.unittest.run(plan, 'Format', 'json', 'OutputFile', [tempdir(), 'tests.json']);
proposal = nelson.unittest.tuneWeights(results);
reuseProposal = nelson.unittest.tuneReuse('string');
nelson.unittest.report(results, 'Format', 'tap', 'OutputFile', [tempdir(), 'tests.tap']);
nelson.unittest.report(results, 'Format', 'html', 'OutputFile', [tempdir(), 'tests.html']);

```


## 🔗 Voir aussi

[test_run](../tests_manager/test_run.md), [test_makeref](../tests_manager/test_makeref.md), [skip_testsuite](../tests_manager/test_skip_testsuite.md), [nelson.unittest.tuneWeights](../tests_manager/nelson_unittest_tuneWeights.md), [nelson.unittest.tuneReuse](../tests_manager/nelson_unittest_tuneReuse.md).