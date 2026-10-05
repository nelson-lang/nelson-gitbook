#import "nelson_help.typ": *

= nmm init <modules_manager:nmm_init>

Generate a valid module.json manifest.

== Syntax

- #raw("module_json_path = nmm('init', destination_dir, field1, value1, ...)");
- #raw("data = nmm('init', destination_dir, ..., 'DryRun', true)");
- #raw("module_json_path = nmm('init', destination_dir, ..., 'Force', true)");
- #raw("module_json_path = nmm('init', destination_dir, ..., 'Skeleton', true)");
- #raw("module_json_path = nmm('init', destination_dir, 'Interactive', true)");

== Input argument

/ destination\_dir: a string: directory where #strong[module.json]; is written (created if it does not exist).
/ field1, value1, ...: name\/value pairs describing the manifest and the command options (see the description).

== Output argument

/ module\_json\_path: a string: full path of the written #strong[module.json]; file.
/ data: a struct: the assembled manifest, returned when #strong['DryRun']; is #strong[true]; (nothing is written).

== Description

#strong[nmm('init', destination\_dir, ...)]; assembles a #strong[module.json]; manifest from the supplied fields and sensible defaults, validates it with the same schema validator used by #strong[nmm('validate')];, and writes a pretty-printed #strong[module.json]; in #strong[destination\_dir];. Because it reuses nmm's own validator, a generated manifest is always nmm-valid.

 Manifest fields accepted as name\/value pairs:

 #strong[module]; a string module name matching #strong[^\[A-Za-z\]\[A-Za-z0-9\_\]\*\$];; defaults to the destination folder name (or the title) when omitted.

 #strong[title];, #strong[summary]; non-empty strings; #strong[title]; defaults to the module name and #strong[summary]; defaults to the title.

 #strong[version]; a semantic version; defaults to #strong[1.0.0];.

 #strong[license]; a SPDX license expression (for example #strong[MIT]; or #strong[LGPL-3.0-or-later];); required.

 #strong[platforms]; a string or cell of strings; defaults to #strong[{'all'}];.

 #strong[nelson]; a Nelson version range; defaults to #strong[\>\=2.0.0];.

 #strong[builtin]; a logical; defaults to #strong[false];.

 #strong[dependencies]; a struct mapping module names to version constraints; defaults to an empty struct.

 #strong[keywords];, #strong[authors];, #strong[description];, #strong[repository];, #strong[homepage];, #strong[issues];, #strong[documentation]; optional metadata.

 Command options:

 #strong['Force', true]; overwrites an existing #strong[module.json]; (otherwise the command errors).

 #strong['DryRun', true]; returns the assembled manifest struct without writing any file.

 #strong['Skeleton', true]; also drops a minimal loadable, package-ready source tree next to the manifest (#strong[loader.m];, #strong[builder.m];, #strong[etc\/startup.m];, #strong[etc\/finish.m];, #strong[help]; and #strong[tests];). It is intentionally minimal; use a dedicated scaffolder for a richer module.

 #strong['Interactive', true]; prompts with #strong[input()]; for any required field that was not supplied, showing the default in brackets and validating each answer. It is disabled by default so that scripts run through #strong[--file]; never block on standard input.

 After writing (or computing, on #strong[DryRun];) the manifest, #strong[init]; runs nmm's own best-practice warnings linter (the same one as #strong[nmm('validate', ..., '-warnings')];) and echoes non-fatal suggestions for recommended metadata that is missing, such as #strong[repository];, #strong[authors];, #strong[keywords]; or #strong[description];. Warnings never stop the manifest from being written. On #strong[DryRun]; the returned struct also carries a #strong[warnings]; field.

 The generated manifest is directly usable by #strong[nmm('validate')]; and, for a source module, by #strong[nmm('pack')];.


== Example

Generate a manifest and validate it

``````matlab
module_dir = [tempdir(), 'my_module/'];
mkdir(module_dir);
nmm('init', module_dir, 'module', 'my_module', 'title', 'My Module', ...
    'summary', 'a demo module', 'license', 'MIT', 'Skeleton', true);
nmm('validate', module_dir)

``````


== See also

#nlink(<modules_manager:nmm>)[nmm];, #nlink(<modules_manager:module-json>)[module.json];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
