#import "nelson_help.typ": *

= checkcode <interpreter:checkcode>

Analyze Nelson source files and report code issues.

== Syntax

- #raw("issues = checkcode(filename)");
- #raw("issues = checkcode(names, option1, ..., optionN)");

== Input argument

/ filename: a string: Nelson source file to analyze.
/ names: a string, string array, or cell array of character vectors: files to analyze.
/ option: an option among '-id', '-fullpath', '-notok', '-cyc', '-modcyc', '-config\=file', '-struct', and '-string'.

== Output argument

/ issues: a structure array with fields id, message, fix, line, and column, or a formatted string when '-string' is used.

== Description

#strong[checkcode]; analyzes Nelson source files and reports syntax, style, data-flow, naming, and complexity issues.

 The option '-notok' includes diagnostics suppressed by #strong[%\#ok]; or #strong[%\#ok\<NLS0001\>]; comments.

 The option '-config\=file' loads a JSON configuration file. The default file name used by command-line workflows is #strong[nelson-lint.json];.

 The JSON configuration must use schema version 2 and can contain #strong[extends];, #strong[files];, #strong[rules];, and #strong[ci]; keys.


== Used function(s)

codeAnalyzerRules

== Examples

Analyze one file and return a structure array.

``````matlab
issues = checkcode([nelsonroot(), '/etc/startup.m'], '-struct', '-id')
``````

Example JSON configuration file.

``````matlab
{
  "version": 2,
  "files": {
    "exclude": [".git", "build", "target", "bin", "x64", "generated"]
  },
  "rules": {
    "NLS0001": { "level": "error" },
    "NLS0013": { "level": "error" },
    "NLS0012": { "level": "warning", "options": { "maxLineLength": 120 } },
    "NLS0014": { "options": { "warning": 10, "error": 50 } },
    "NLS0015": { "options": { "warning": 10, "error": 50 } }
  },
  "ci": {
    "failOn": "warning"
  }
}
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
