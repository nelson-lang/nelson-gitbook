# nelson.unittest.tuneWeights

Calibrer les poids de planification avec les durees mesurees.

## 📝 Syntaxe

- proposal = nelson.unittest.tuneWeights(results)
- proposal = nelson.unittest.tuneWeights(results, 'Apply', true)
- [proposal, results] = nelson.unittest.tuneWeights(targets, Name, Value)

## 📥 Argument d'entrée

- results - TestRunResult retourne par nelson.unittest.run.
- targets - nom de module, dossier, fichier, tableau de cellules de cibles, TestSuite ou TestPlan. Les cibles sont executees une fois pour mesurer leurs durees.
- Apply - scalaire logique. La valeur par defaut est false. Avec true, les tags <--WEIGHT N--> sont ajoutes, modifies ou supprimes dans les fichiers mesures.
- MaxWeight - entier positif limitant les poids generes. La valeur par defaut est 64.
- Name, Value - les autres options sont transmises a nelson.unittest.run quand des cibles sont fournies.

## 📤 Argument de sortie

- proposal - structure WeightTuningResult contenant fichiers mesures, durees, anciens et nouveaux poids, actions et resume.
- results - TestRunResult utilise pour la calibration.

## 📄 Description


<b>nelson.unittest.tuneWeights</b> calcule des poids statiques de planification depuis les durees mesurees. Aucun cache de durees n'est cree ou consulte. 

Le comportement par defaut est une simulation. Les fichiers sources sont modifies uniquement avec <b>Apply</b> egal a true. 

Seuls les tests reussis et les benches termines sont eligibles. Les echecs, skips, timeouts, resultats manquants et fichiers supprimes sont ignores. 

Les durees sont normalisees separement pour chaque module et pour les categories test et bench. La duree mediane correspond au poids 1. Les durees superieures sont quantifiees en puissances de deux et limitees par <b>MaxWeight</b>. Cette quantification evite les modifications dues a de petites variations. 

Le poids genere 1 est implicite : un tag de poids existant est supprime. Les autres poids ajoutent ou remplacent un seul tag d'entete tout en conservant le style de fin de ligne. 

Fournir des cibles les execute une fois avant de produire la proposition. Ce run de calibration prepare les executions suivantes ; l'utiliser comme prepass obligatoire executerait les memes tests deux fois. 

Si les tags de reutilisation sont aussi calibres, les appliquer d'abord. La calibration des poids doit utiliser un nouveau run effectue avec la configuration finale de reutilisation des processus.

## 💡 Exemples

Verifier puis appliquer une proposition issue d'un run existant.

```matlab

results = nelson.unittest.run({'interpreter', 'statistics'});
proposal = nelson.unittest.tuneWeights(results);
proposal = nelson.unittest.tuneWeights(results, 'Apply', true);

```
Calibrer les poids des tests d'un module, verifier la proposition, puis appliquer les memes mesures sans nouveau run.

```matlab

[proposal, results] = nelson.unittest.tuneWeights('interpreter', ...
  'Kind', 'test', 'Workers', 16);
proposal.summary
proposal.cases

applied = nelson.unittest.tuneWeights(results, 'Apply', true);

```


## 🔗 Voir aussi

[nelson.unittest.run](../tests_manager/nelson_unittest_run.md), [nelson.unittest.plan](../tests_manager/nelson_unittest_plan.md), [nelson.unittest.tuneReuse](../tests_manager/nelson_unittest_tuneReuse.md).