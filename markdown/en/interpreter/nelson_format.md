# nelson-format

Command-line Nelson source formatter.

## 📝 Syntax

- nelson-format [--include-subfolders true\|false] [--indent-size n] [--full-format true\|false] [--config file] [--check] path ...

## 📄 Description


<b>nelson-format</b> formats Nelson source files from the command line. 

Files are formatted in place by default. The formatter only processes files with the <b>.m</b> extension. 

<b>--include-subfolders</b> enables recursive formatting when a folder is passed as input. 

<b>--indent-size</b> sets the indentation size. The default value is <b>2</b>. 

<b>--full-format</b> enables or disables full formatting. The default value is <b>true</b>. Set it to <b>false</b> to only update leading indentation. 

Full formatting preserves package, member, and dynamic-field references such as <b>package.function(value.(name))</b>. Contextual class block names remain ordinary identifiers when used in executable statements. 

<b>--config</b> loads a JSON configuration file. Without this option, <b>nelson-format</b> looks for <b>nelson-format.json</b> from the input paths and then from the current folder. 

<b>--check</b> reports files that would change without writing them. 

Single-line blocks retain their opening and closing statements. Their indentation does not affect subsequent lines, and indexing expressions using <b>end</b> remain distinct from block terminators. 

Inline catch clauses preserve the separator after an optional exception variable, including forms such as <b>catch err, value = err.message;</b>. 

The supported configuration keys are <b>indentSize</b>, <b>fullFormat</b>, <b>includeSubfolders</b>, and <b>excludePathContains</b>. Command-line options override values loaded from JSON. 

Files listed by <b>nelson-format-ignore.json</b> or by <b>excludePathContains</b> in <b>nelson-format.json</b> are skipped. 

Exit code <b>0</b> means success or no change required, <b>1</b> means <b>--check</b> found files that would change, and <b>2</b> means usage, input, read/write, or internal error.

## Used function(s)

smartindent

## 💡 Examples

Format all Nelson files in a folder recursively.

```matlab
nelson-format --include-subfolders true modules/interpreter/functions
```
Check whether a file is already formatted.

```matlab
nelson-format --check myfile.m
```
Format with an explicit configuration file.

```matlab
nelson-format --config nelson-format.json modules/interpreter/functions
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
