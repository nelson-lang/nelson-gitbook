# checkcode

Analyze Nelson source files and report code issues.

## 📝 Syntax

- issues = checkcode(filename)
- issues = checkcode(names, option1, ..., optionN)

## 📥 Input argument

- filename - a string: Nelson source file to analyze.
- names - a string, string array, or cell array of character vectors: files to analyze.
- option - an option among '-id', '-fullpath', '-notok', '-cyc', '-modcyc', '-config=file', '-struct', and '-string'.

## 📤 Output argument

- issues - a structure array with fields id, message, fix, line, and column, or a formatted string when '-string' is used.

## 📄 Description

<b>checkcode</b> analyzes Nelson source files and reports syntax, style, data-flow, naming, and complexity issues.

The option '-notok' includes diagnostics suppressed by <b>%#ok</b> or <b>%#ok<NLS0001></b> comments.

The option '-config=file' loads a JSON configuration file. The default file name used by command-line workflows is <b>nelson-lint.json</b>.

The JSON configuration must use schema version 2 and can contain <b>extends</b>, <b>files</b>, <b>rules</b>, and <b>ci</b> keys.

## Used function(s)

codeAnalyzerRules

## 💡 Examples

Analyze one file and return a structure array.

```matlab
issues = checkcode([nelsonroot(), '/etc/startup.m'], '-struct', '-id')
```

Example JSON configuration file.

```matlab
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
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
