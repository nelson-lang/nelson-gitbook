# nelson.unittest.report

Ecrire les rapports du runner de tests et de benches.

## 📝 Syntaxe

- status = nelson.unittest.report(results, Name, Value)

## 📥 Argument d'entrée

- results - TestRunResult retourne par nelson.unittest.run.
- Name, Value - options de rapport : Format, OutputFile et Verbose. Format accepte console, json, junit, tap et html.

## 📤 Argument de sortie

- status - true si le rapport a ete ecrit correctement.

## 📄 Description


<b>nelson.unittest.report</b> ecrit des rapports console, JSON, JUnit XML, TAP13 ou HTML autonome. 

Les rapports JUnit placent skipped, failure, error, stdout et stderr sous chaque testcase. 

Les rapports HTML sont des fichiers uniques avec style et script integres, metriques de synthese, configuration du runner, informations d'environnement, filtres, details par cas, stdout, stderr, diagnostics et donnees JSON embarquees. 

Le rapport HTML contient une section des dix tests et benches les plus lents, un resume compact par module, des separateurs visuels de modules, des colonnes triables et des filtres rapides pour les cas echoues, ignores, bench et lents. 

Les cas failed, timeout et error sont ouverts par defaut. Chaque detail de cas contient une commande de reproduction quand le nom de fichier du test est disponible. 

Les lignes de bench utilisent le statut bench et affichent directement la duree mesuree dans le badge. 

Quand un rapport HTML est ecrit dans <b>report.html</b>, un sidecar JSON <b>report.json</b> est ecrit a cote. Le fichier HTML reste autonome car il embarque aussi les donnees JSON.

## 💡 Exemple



```matlab

nelson.unittest.report(results, 'Format', 'tap', 'OutputFile', [tempdir(), 'tests.tap']);
nelson.unittest.report(results, 'Format', 'html', 'OutputFile', [tempdir(), 'tests.html']);
% L'appel HTML ecrit aussi [tempdir(), 'tests.json'].

```


## 🔗 Voir aussi

[nelson.unittest.run](../tests_manager/nelson_unittest_run.md), [test_run](../tests_manager/test_run.md).