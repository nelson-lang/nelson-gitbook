# bench_run

Exécuter les benchmarks

## 📝 Syntaxe

- status = bench_run()
- status = bench_run(targets)
- status = bench_run(targets, Name, Value)

## 📥 Argument d'entrée

- targets - nom de module, noms de modules, fichier benchmark ou fichiers benchmarks.
- Name, Value - options acceptées par nelson.unittest.run.

## 📤 Argument de sortie

- status - logique : vrai lorsque tous les benchmarks sélectionnés réussissent.

## 📄 Description

<b>bench_run</b> découvre et exécute uniquement les fichiers 'bench\_\*.m'.

Les benchmarks sont toujours exécutés dans des processus enfants. Un processus de benchmark est utilisé avec au plus huit threads disponibles ; deux processus sont utilisés au-delà de huit threads.

Utilisez <b>nelson.unittest.run</b> avec <b>Kind</b> défini à <b>bench</b> pour obtenir des résultats structurés.

## 💡 Exemple

```matlab
bench_run('string')
```

## 🔗 Voir aussi

[test_run](../tests_manager/test_run.md), [nelson.unittest.run](../tests_manager/nelson_unittest_run.md).

<!--
## 👤 Auteur

Allan CORNET
-->
