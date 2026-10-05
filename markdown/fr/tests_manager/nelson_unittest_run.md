# nelson.unittest.run

Executer des tests avec le runner moderne.

## 📝 Syntaxe

- results = nelson.unittest.run(targets, Name, Value)
- results = nelson.unittest.run(plan, Name, Value)

## 📥 Argument d'entrée

- targets - nom de module, dossier, nom de fichier, tableau de cellules de cibles, TestSuite ou TestPlan.
- Name, Value - options d'execution : Workers, Timeout, StopOnFail, Retry, RetryOnlyOn, LogDir, Format, OutputFile et Launcher.

## 📤 Argument de sortie

- results - structure TestRunResult avec status, summary, cases normalises, diagnostics, registry et donnees brutes de compatibilite.

## 📄 Description


<b>nelson.unittest.run</b> execute chaque test ou bench dans un processus enfant supervise. Il n'existe pas de mode d'execution in-process pour les tests ou les benches. 

Les tests et les benches s'executent par defaut dans des processus enfants separes. Un fichier peut autoriser la reutilisation de processus avec le tag <b><--REUSE PROCESS--></b>. 

Le superviseur natif utilise une file dynamique ponderee. Le tag optionnel <b><--WEIGHT N--></b> donne la priorite aux fichiers plus lourds sans modifier leur ordre stable d'affichage. 

Le tag optionnel <b><--TIMEOUT N--></b> remplace le delai d'execution par fichier (en secondes) pour un seul fichier ; l'option globale <b>Timeout</b>, lorsqu'elle est definie, reste prioritaire. 

Les resultats sont affiches progressivement dans l'ordre de decouverte des que les resultats precedents sont disponibles. Chaque ligne contient son statut et son temps d'execution. 

Si un worker reutilisable crashe ou ne retourne aucun resultat, le runner relance une fois le test par le chemin isole. Un timeout est rapporte directement. 

Sans tag GUI ou ADV-CLI, le launcher isole est <b>nelson-cli</b>, y compris lorsque le processus parent est graphique. 

L'option <b>Launcher</b> choisit le backend graphique des tests tagues ADV-CLI : <b>'default'</b>(les executables historiques) ou <b>'webview'</b>, qui execute ces tests via <b>nelson-adv-cli --webview</b> afin que les figures soient rendues par le backend web headless (RenderWeb). Les tags CLI et GUI ne sont pas affectes. La valeur est aussi lue depuis la variable d'environnement <b>NELSON\_UNITTEST\_LAUNCHER</b>, pratique en integration continue.

## 💡 Exemple



```matlab

results = nelson.unittest.run('core', 'Workers', 4, 'Format', 'json', ...
  'OutputFile', [tempdir(), 'core.json']);

```


## 🔗 Voir aussi

[test_run](../tests_manager/test_run.md), [nelson.unittest.report](../tests_manager/nelson_unittest_report.md), [nelson.unittest.tuneWeights](../tests_manager/nelson_unittest_tuneWeights.md), [nelson.unittest.tuneReuse](../tests_manager/nelson_unittest_tuneReuse.md).