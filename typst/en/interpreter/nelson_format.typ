#import "nelson_help.typ": *

= nelson-format <interpreter:nelson_format>

Command-line Nelson source formatter.

== Syntax

- #raw("nelson-format [--include-subfolders true|false] [--indent-size n] [--full-format true|false] [--config file] [--check] path ...");

== Description

#strong[nelson-format]; formats Nelson source files from the command line.

 Files are formatted in place by default. The formatter only processes files with the #strong[.m]; extension.

 #strong[--include-subfolders]; enables recursive formatting when a folder is passed as input.

 #strong[--indent-size]; sets the indentation size. The default value is #strong[2];.

 #strong[--full-format]; enables or disables full formatting. The default value is #strong[true];. Set it to #strong[false]; to only update leading indentation.

 Full formatting preserves package, member, and dynamic-field references such as #strong[package.function(value.(name))];. Contextual class block names remain ordinary identifiers when used in executable statements.

 #strong[--config]; loads a JSON configuration file. Without this option, #strong[nelson-format]; looks for #strong[nelson-format.json]; from the input paths and then from the current folder.

 #strong[--check]; reports files that would change without writing them.

 Single-line blocks retain their opening and closing statements. Their indentation does not affect subsequent lines, and indexing expressions using #strong[end]; remain distinct from block terminators.

 Inline catch clauses preserve the separator after an optional exception variable, including forms such as #strong[catch err, value \= err.message;];.

 The supported configuration keys are #strong[indentSize];, #strong[fullFormat];, #strong[includeSubfolders];, and #strong[excludePathContains];. Command-line options override values loaded from JSON.

 Files listed by #strong[nelson-format-ignore.json]; or by #strong[excludePathContains]; in #strong[nelson-format.json]; are skipped.

 Exit code #strong[0]; means success or no change required, #strong[1]; means #strong[--check]; found files that would change, and #strong[2]; means usage, input, read\/write, or internal error.


== Used function(s)

smartindent

== Examples

Format all Nelson files in a folder recursively.

``````matlab
nelson-format --include-subfolders true modules/interpreter/functions
``````

Check whether a file is already formatted.

``````matlab
nelson-format --check myfile.m
``````

Format with an explicit configuration file.

``````matlab
nelson-format --config nelson-format.json modules/interpreter/functions
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
