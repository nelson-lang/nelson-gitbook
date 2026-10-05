# nelson.unittest.plan

Create an execution plan for a test suite.

## 📝 Syntax

- plan = nelson.unittest.plan(suite)
- plan = nelson.unittest.plan(suite, Name, Value)

## 📥 Input argument

- suite - TestSuite returned by nelson.unittest.discover or nelson.unittest.select.
- Name, Value - planning options: Workers, ShardIndex, ShardCount, Shuffle, Seed, and resource policy options.

## 📤 Output argument

- plan - TestPlan structure containing cases, workers, shard, order, and resource groups.

## 📄 Description


<b>nelson.unittest.plan</b> prepares selected cases for execution. 

Benchmarks and tests that require sequential execution are separated from tests that can run in parallel.

## 💡 Example



```matlab

plan = nelson.unittest.plan(suite, 'Workers', 4, 'ShardIndex', 1, 'ShardCount', 2);

```


## 🔗 See also

[nelson.unittest.select](../tests_manager/nelson_unittest_select.md), [nelson.unittest.run](../tests_manager/nelson_unittest_run.md).