# nelson.unittest.plan

Creer un plan d'execution pour une suite de tests.

## 📝 Syntaxe

- plan = nelson.unittest.plan(suite)
- plan = nelson.unittest.plan(suite, Name, Value)

## 📥 Argument d'entrée

- suite - TestSuite retournee par nelson.unittest.discover ou nelson.unittest.select.
- Name, Value - options de planification : Workers, ShardIndex, ShardCount, Shuffle, Seed et options de ressources.

## 📤 Argument de sortie

- plan - structure TestPlan contenant cases, workers, shard, order et groupes de ressources.

## 📄 Description

<b>nelson.unittest.plan</b> prepare les cas selectionnes pour l'execution.

Les benchs et les tests qui exigent une execution sequentielle sont separes des tests parallelisables.

## 💡 Exemple

```matlab

plan = nelson.unittest.plan(suite, 'Workers', 4, 'ShardIndex', 1, 'ShardCount', 2);

```

## 🔗 Voir aussi

[nelson.unittest.select](../tests_manager/nelson.unittest.select.md), [nelson.unittest.run](../tests_manager/nelson.unittest.run.md).
