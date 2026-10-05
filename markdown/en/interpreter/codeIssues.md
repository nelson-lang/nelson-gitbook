# codeIssues

Collect Nelson code analyzer issues as tables.

## 📝 Syntax

- ci = codeIssues()
- ci = codeIssues(names)
- ci = codeIssues(names, Name, Value)
- export(ci, filename)
- ci = fix(ci)

## 📥 Input argument

- names - a string, string array, or cell array of character vectors: files or folders to analyze.
- CodeAnalyzerConfiguration - a string: JSON configuration file.
- IncludeSubfolders - a logical scalar: true to recursively analyze folders.

## 📤 Output argument

- ci - a codeIssues object. Its Issues and SuppressedIssues properties are Nelson tables.

## 📄 Description


<b>codeIssues</b> runs the Nelson code analyzer and stores active and suppressed diagnostics in table properties. 

The JSON configuration file uses the same version 2 format as <b>checkcode</b>: <b>extends</b>, <b>files.include</b>, <b>files.exclude</b>, <b>rules</b>, and <b>ci.failOn</b>. 

The <b>export</b> method writes JSON, CSV, or text according to the output file extension. 

The <b>fix</b> method applies only trivial automatic fixes in this version: trailing whitespace and missing final newline.

## Used function(s)

codeAnalyzerRules

## 💡 Examples

Analyze a folder recursively with a JSON configuration.

```matlab
ci = codeIssues([nelsonroot(), '/modules/interpreter/functions'], ...
  'CodeAnalyzerConfiguration', [nelsonroot(), '/nelson-lint.json'], ...
  'IncludeSubfolders', true);
ci.Issues
```
Configuration file shape.

```matlab
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
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
