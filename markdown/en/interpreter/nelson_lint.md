# nelson-lint

Command-line Nelson code analyzer.

## 📝 Syntax

- nelson-lint [--format text\|json\|sarif] [--config file] path ...
- nelson-lint [--include-subfolders true\|false] [--fail-on error\|warning\|info\|none] path ...
- nelson-lint [--stdin] [--stdin-filename name] [--fix\|--fix-dry-run\|--diff] path ...

## 📄 Description


<b>nelson-lint</b> analyzes Nelson source files and folders from the command line. 

<b>--format</b> selects text, JSON, or SARIF output. 

<b>--config</b> loads a version 2 JSON configuration file. 

<b>--include-subfolders</b> enables recursive folder analysis. 

<b>--fail-on</b> selects the minimum severity that produces exit code <b>1</b>. <b>--deny warnings</b> is kept as an alias for <b>--fail-on warning</b>. 

<b>--stdin</b> analyzes source text from standard input. Use <b>--stdin-filename</b> to choose the diagnostic filename. 

<b>--quiet</b> suppresses standard output, and <b>--output</b> writes diagnostics to a file. 

<b>--fix</b> applies non-overlapping safe text edits carried by diagnostics, then analyzes the files again before reporting the final diagnostics. Safe fixes include whitespace cleanup and other analyzer fixes whose ranges are exact. 

<b>--fix-dry-run</b> and <b>--diff</b> show the safe edits without changing files. 

Exit code <b>0</b> means no remaining diagnostics, <b>1</b> means diagnostics remain, and <b>2</b> means usage, input, or internal error.

## Used function(s)

codeAnalyzerRules

## 💡 Example

Run the analyzer recursively with fixes enabled.

```matlab
nelson-lint --include-subfolders true --fix --config nelson-lint.json modules/interpreter/functions
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
