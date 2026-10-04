# nelson.unittest.tuneWeights

Calibrate scheduling weights from measured test durations.

## 📝 Syntax

- proposal = nelson.unittest.tuneWeights(results)
- proposal = nelson.unittest.tuneWeights(results, 'Apply', true)
- [proposal, results] = nelson.unittest.tuneWeights(targets, Name, Value)

## 📥 Input argument

- results - TestRunResult returned by nelson.unittest.run.
- targets - module name, directory, file name, cell array of targets, TestSuite, or TestPlan. The targets are executed once to collect durations.
- Apply - logical scalar. The default is false. When true, add, update, or remove <--WEIGHT N--> tags in measured source files.
- MaxWeight - positive integer limiting generated weights. The default is 64.
- Name, Value - other options are forwarded to nelson.unittest.run when targets are supplied.

## 📤 Output argument

- proposal - WeightTuningResult structure containing the measured files, durations, old and new weights, actions, and summary.
- results - TestRunResult used for calibration.

## 📄 Description

<b>nelson.unittest.tuneWeights</b> derives static scheduling weights from measured durations. It does not create or read a duration cache.

The default is a dry run. Source files are changed only when <b>Apply</b> is true.

Only passed tests and completed benches are eligible. Failed, skipped, timed out, missing, and deleted files are ignored.

Durations are normalized independently for each module and for test and bench categories. The median duration is weight 1. Larger durations are quantized to powers of two and limited by <b>MaxWeight</b>. Quantization avoids source changes caused by small timing variations.

A generated weight of 1 is implicit: an existing weight tag is removed. Other weights add or replace a single header tag while preserving the file line-ending style.

Supplying targets runs them once before producing the proposal. This calibration run prepares later executions; using it as a mandatory prepass would run the same tests twice.

If reuse tags are also being calibrated, apply them first. Weight calibration should use a fresh run performed with the final process-reuse configuration.

## 💡 Examples

Review and then apply a proposal from an existing run.

```matlab

results = nelson.unittest.run({'interpreter', 'statistics'});
proposal = nelson.unittest.tuneWeights(results);
proposal = nelson.unittest.tuneWeights(results, 'Apply', true);

```

Calibrate module test weights, review the proposal, then apply the same measurements without another run.

```matlab

[proposal, results] = nelson.unittest.tuneWeights('interpreter', ...
  'Kind', 'test', 'Workers', 16);
proposal.summary
proposal.cases

applied = nelson.unittest.tuneWeights(results, 'Apply', true);

```

## 🔗 See also

[nelson.unittest.run](../tests_manager/nelson.unittest.run.md), [nelson.unittest.plan](../tests_manager/nelson.unittest.plan.md), [nelson.unittest.tuneReuse](../tests_manager/nelson.unittest.tuneReuse.md).
