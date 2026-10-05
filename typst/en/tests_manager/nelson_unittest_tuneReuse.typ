#import "nelson_help.typ": *

= nelson.unittest.tuneReuse <tests_manager:nelson_unittest_tuneReuse>

Calibrate explicit child-process reuse for tests and benches.

== Syntax

- #raw("proposal = nelson.unittest.tuneReuse(targets)");
- #raw("proposal = nelson.unittest.tuneReuse(targets, 'AllowAdd', true)");
- #raw("[proposal, calibration] = nelson.unittest.tuneReuse(targets, Name, Value)");

== Input argument

/ targets: module name, directory, file name, cell array of targets, TestSuite, or TestPlan.
/ Apply: logical scalar. The default is false. When true, apply proposed additions and removals of the \<--REUSE PROCESS--\> tag.
/ AllowAdd: logical scalar. The default is false. When false, only files already carrying the reuse tag are calibrated. Set it to true to authorize proposals for untagged eligible files.
/ Trials: positive integer number of reused-process campaigns. The default is 3.
/ MinGain: minimum module execution-time gain required for additions, from -1 to 1. The default is 0.10. Use -1 to certify safety without requiring a performance gain.
/ Name, Value: selection options Name, Module, File, Kind, Tags, ExcludeTags, Match, Exclude, and the Timeout execution option are accepted.

== Output argument

/ proposal: ReuseTuningResult structure containing evidence, timing, actions, and summary.
/ calibration: ReuseCalibration structure containing the isolated result and reused trial results.

== Description

#strong[nelson.unittest.tuneReuse]; validates explicit process reuse through real executions. It does not infer safety by scanning source text and does not create or read a cache.

 Calibration always uses one native worker and disables retries. The isolated reference and every reused trial execute the same workload twice. Reused trials use deterministic normal, reverse, and rotated orders so that state contamination between files and between repeated executions can be observed.

 The reused campaigns use the production worker protocol and reset path. A file is certified only when its isolated executions pass and every reused execution returns a successful worker payload without fallback or missing result.

 If an existing tagged file passes in isolation but fails reuse calibration, tag removal is proposed. An untagged file receives an add proposal only with #strong[AllowAdd]; set to true, successful calibration, and a measured module gain at least equal to #strong[MinGain];. An isolated failure never changes the file.

 GUI, ADV-CLI, MPI, sequential, IPC, file-watcher, audio, language-imposed, and external-environment cases are excluded because they are not eligible for the reusable CLI worker.

 The default is a dry run. #strong[Apply]; must be true to edit source files. Header insertion and removal preserve UTF-8 BOM and line-ending style.

 This is an explicit maintenance command rather than a required prepass. It runs more work than a normal suite execution and is intended for periodic tag calibration before regular CI runs.

 When maintaining both reuse and weight tags, calibrate and apply reuse tags first. Then collect fresh durations with #strong[nelson.unittest.tuneWeights]; so weights describe the resulting execution setup.


== Examples

Audit existing reuse tags without editing files.

``````matlab

proposal = nelson.unittest.tuneReuse({'interpreter', 'statistics'});

``````

Calibrate module tests, review the proposal, then rerun and apply accepted changes.

``````matlab

[proposal, calibration] = nelson.unittest.tuneReuse('interpreter', ...
  'Kind', 'test', 'Trials', 3, 'MinGain', 0.10, 'AllowAdd', true);
proposal.summary
proposal.cases

applied = nelson.unittest.tuneReuse('interpreter', ...
  'Kind', 'test', 'Trials', 3, 'MinGain', 0.10, ...
  'AllowAdd', true, 'Apply', true);

``````


== See also

#nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];, #nlink(<tests_manager:nelson_unittest_tuneWeights>)[nelson.unittest.tuneWeights];, #nlink(<tests_manager:nelson_unittest_discover>)[nelson.unittest.discover];.
