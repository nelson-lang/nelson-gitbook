#import "nelson_help.typ": *

= nelson.unittest.tuneReuse <tests_manager:nelson_unittest_tuneReuse>

Calibrer la reutilisation explicite des processus pour les tests et les benches.

== Syntaxe

- #raw("proposal = nelson.unittest.tuneReuse(targets)");
- #raw("proposal = nelson.unittest.tuneReuse(targets, 'AllowAdd', true)");
- #raw("[proposal, calibration] = nelson.unittest.tuneReuse(targets, Name, Value)");

== Argument d'entrée

/ targets: nom de module, dossier, fichier, tableau de cellules de cibles, TestSuite ou TestPlan.
/ Apply: scalaire logique. La valeur par defaut est false. Avec true, les ajouts et suppressions proposes du tag \<--REUSE PROCESS--\> sont appliques.
/ AllowAdd: scalaire logique. La valeur par defaut est false. Avec false, seuls les fichiers deja tagues sont calibres. Utiliser true pour autoriser des propositions sur les fichiers eligibles non tagues.
/ Trials: entier positif indiquant le nombre de campagnes en processus reutilise. La valeur par defaut est 3.
/ MinGain: gain minimal du temps d'execution du module exige pour les ajouts, entre -1 et 1. La valeur par defaut est 0.10. Utiliser -1 pour certifier la surete sans exiger de gain.
/ Name, Value: les options de selection Name, Module, File, Kind, Tags, ExcludeTags, Match, Exclude et l'option d'execution Timeout sont acceptees.

== Argument de sortie

/ proposal: structure ReuseTuningResult contenant preuves, temps, actions et resume.
/ calibration: structure ReuseCalibration contenant le resultat isole et les resultats reutilises.

== Description

#strong[nelson.unittest.tuneReuse]; valide la reutilisation explicite avec de vraies executions. La fonction ne deduit pas la surete en analysant le texte source et ne cree ni ne consulte de cache.

 La calibration utilise toujours un worker natif et desactive les retries. La reference isolee et chaque essai reutilise executent deux fois la meme charge. Les essais reutilises suivent des ordres deterministes normal, inverse et rotatif afin de detecter les contaminations entre fichiers et entre repetitions.

 Les campagnes reutilisees emploient le protocole worker et le reset de production. Un fichier est certifie uniquement si les executions isolees reussissent et si chaque execution reutilisee retourne un payload worker reussi, sans fallback ni resultat manquant.

 Si un fichier deja tague reussit en isolation mais echoue en reutilisation, la suppression du tag est proposee. Un fichier non tague recoit une proposition d'ajout uniquement avec #strong[AllowAdd]; a true, une calibration reussie et un gain de module au moins egal a #strong[MinGain];. Un echec isole ne modifie rien.

 Les cas GUI, ADV-CLI, MPI, sequentiels, IPC, file-watcher, audio, langue imposee et environnements externes sont exclus car ils ne sont pas eligibles au worker CLI reutilisable.

 Le comportement par defaut est une simulation. #strong[Apply]; doit etre true pour modifier les sources. L'ajout et la suppression dans l'entete conservent le BOM UTF-8 et le style des fins de ligne.

 Cette commande de maintenance explicite n'est pas un prepass obligatoire. Elle execute davantage de travail qu'un run normal et sert a calibrer periodiquement les tags avant les runs CI habituels.

 Pour maintenir les tags de reutilisation et de poids, calibrer et appliquer d'abord les tags de reutilisation. Mesurer ensuite de nouvelles durees avec #strong[nelson.unittest.tuneWeights]; afin que les poids decrivent la configuration d'execution obtenue.


== Exemples

Auditer les tags existants sans modifier les fichiers.

``````matlab

proposal = nelson.unittest.tuneReuse({'interpreter', 'statistics'});

``````

Calibrer les tests d'un module, verifier la proposition, puis recalibrer et appliquer les changements acceptes.

``````matlab

[proposal, calibration] = nelson.unittest.tuneReuse('interpreter', ...
  'Kind', 'test', 'Trials', 3, 'MinGain', 0.10, 'AllowAdd', true);
proposal.summary
proposal.cases

applied = nelson.unittest.tuneReuse('interpreter', ...
  'Kind', 'test', 'Trials', 3, 'MinGain', 0.10, ...
  'AllowAdd', true, 'Apply', true);

``````


== Voir aussi

#nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];, #nlink(<tests_manager:nelson_unittest_tuneWeights>)[nelson.unittest.tuneWeights];, #nlink(<tests_manager:nelson_unittest_discover>)[nelson.unittest.discover];.
