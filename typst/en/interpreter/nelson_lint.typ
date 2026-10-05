#import "nelson_help.typ": *

= nelson-lint <interpreter:nelson_lint>

Command-line Nelson code analyzer.

== Syntax

- #raw("nelson-lint [--format text|json|sarif] [--config file] path ...");
- #raw("nelson-lint [--include-subfolders true|false] [--fail-on error|warning|info|none] path ...");
- #raw("nelson-lint [--stdin] [--stdin-filename name] [--fix|--fix-dry-run|--diff] path ...");

== Description

#strong[nelson-lint]; analyzes Nelson source files and folders from the command line.

 #strong[--format]; selects text, JSON, or SARIF output.

 #strong[--config]; loads a version 2 JSON configuration file.

 #strong[--include-subfolders]; enables recursive folder analysis.

 #strong[--fail-on]; selects the minimum severity that produces exit code #strong[1];. #strong[--deny warnings]; is kept as an alias for #strong[--fail-on warning];.

 #strong[--stdin]; analyzes source text from standard input. Use #strong[--stdin-filename]; to choose the diagnostic filename.

 #strong[--quiet]; suppresses standard output, and #strong[--output]; writes diagnostics to a file.

 #strong[--fix]; applies non-overlapping safe text edits carried by diagnostics, then analyzes the files again before reporting the final diagnostics. Safe fixes include whitespace cleanup and other analyzer fixes whose ranges are exact.

 #strong[--fix-dry-run]; and #strong[--diff]; show the safe edits without changing files.

 Exit code #strong[0]; means no remaining diagnostics, #strong[1]; means diagnostics remain, and #strong[2]; means usage, input, or internal error.


== Used function(s)

codeAnalyzerRules

== Example

Run the analyzer recursively with fixes enabled.

``````matlab
nelson-lint --include-subfolders true --fix --config nelson-lint.json modules/interpreter/functions
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
