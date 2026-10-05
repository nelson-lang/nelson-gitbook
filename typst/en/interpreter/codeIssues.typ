#import "nelson_help.typ": *

= codeIssues <interpreter:codeIssues>

Collect Nelson code analyzer issues as tables.

== Syntax

- #raw("ci = codeIssues()");
- #raw("ci = codeIssues(names)");
- #raw("ci = codeIssues(names, Name, Value)");
- #raw("export(ci, filename)");
- #raw("ci = fix(ci)");

== Input argument

/ names: a string, string array, or cell array of character vectors: files or folders to analyze.
/ CodeAnalyzerConfiguration: a string: JSON configuration file.
/ IncludeSubfolders: a logical scalar: true to recursively analyze folders.

== Output argument

/ ci: a codeIssues object. Its Issues and SuppressedIssues properties are Nelson tables.

== Description

#strong[codeIssues]; runs the Nelson code analyzer and stores active and suppressed diagnostics in table properties.

 The JSON configuration file uses the same version 2 format as #strong[checkcode];: #strong[extends];, #strong[files.include];, #strong[files.exclude];, #strong[rules];, and #strong[ci.failOn];.

 The #strong[export]; method writes JSON, CSV, or text according to the output file extension.

 The #strong[fix]; method applies only trivial automatic fixes in this version: trailing whitespace and missing final newline.


== Used function(s)

codeAnalyzerRules

== Examples

Analyze a folder recursively with a JSON configuration.

``````matlab
ci = codeIssues([nelsonroot(), '/modules/interpreter/functions'], ...
  'CodeAnalyzerConfiguration', [nelsonroot(), '/nelson-lint.json'], ...
  'IncludeSubfolders', true);
ci.Issues
``````

Configuration file shape.

``````matlab
{
  "version": 2,
  "files": {
    "include": ["**/*.m", "**/*.xml"],
    "exclude": [".git", "build", "target", "bin", "x64", "generated"]
  },
  "rules": {
    "NLS0001": { "level": "error" },
    "NLS0013": { "level": "error" },
    "NLS0012": { "level": "warning", "options": { "maxLineLength": 120 } }
  },
  "ci": { "failOn": "warning" }
}
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
