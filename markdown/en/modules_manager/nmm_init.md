# nmm init

Generate a valid module.json manifest.

## 📝 Syntax

- module_json_path = nmm('init', destination_dir, field1, value1, ...)
- data = nmm('init', destination_dir, ..., 'DryRun', true)
- module_json_path = nmm('init', destination_dir, ..., 'Force', true)
- module_json_path = nmm('init', destination_dir, ..., 'Skeleton', true)
- module_json_path = nmm('init', destination_dir, 'Interactive', true)

## 📥 Input argument

- destination_dir - a string: directory where <b>module.json</b> is written (created if it does not exist).
- field1, value1, ... - name/value pairs describing the manifest and the command options (see the description).

## 📤 Output argument

- module_json_path - a string: full path of the written <b>module.json</b> file.
- data - a struct: the assembled manifest, returned when <b>'DryRun'</b> is <b>true</b> (nothing is written).

## 📄 Description

<b>nmm('init', destination_dir, ...)</b> assembles a <b>module.json</b> manifest from the supplied fields and sensible defaults, validates it with the same schema validator used by <b>nmm('validate')</b>, and writes a pretty-printed <b>module.json</b> in <b>destination_dir</b>. Because it reuses nmm's own validator, a generated manifest is always nmm-valid.

Manifest fields accepted as name/value pairs:

<b>module</b> a string module name matching <b>^[A-Za-z][A-Za-z0-9\_]\*$</b>; defaults to the destination folder name (or the title) when omitted.

<b>title</b>, <b>summary</b> non-empty strings; <b>title</b> defaults to the module name and <b>summary</b> defaults to the title.

<b>version</b> a semantic version; defaults to <b>1.0.0</b>.

<b>license</b> a SPDX license expression (for example <b>MIT</b> or <b>LGPL-3.0-or-later</b>); required.

<b>platforms</b> a string or cell of strings; defaults to <b>{'all'}</b>.

<b>nelson</b> a Nelson version range; defaults to <b>>=2.0.0</b>.

<b>builtin</b> a logical; defaults to <b>false</b>.

<b>dependencies</b> a struct mapping module names to version constraints; defaults to an empty struct.

<b>keywords</b>, <b>authors</b>, <b>description</b>, <b>repository</b>, <b>homepage</b>, <b>issues</b>, <b>documentation</b> optional metadata.

Command options:

<b>'Force', true</b> overwrites an existing <b>module.json</b> (otherwise the command errors).

<b>'DryRun', true</b> returns the assembled manifest struct without writing any file.

<b>'Skeleton', true</b> also drops a minimal loadable, package-ready source tree next to the manifest (<b>loader.m</b>, <b>builder.m</b>, <b>etc/startup.m</b>, <b>etc/finish.m</b>, <b>help</b> and <b>tests</b>). It is intentionally minimal; use a dedicated scaffolder for a richer module.

<b>'Interactive', true</b> prompts with <b>input()</b> for any required field that was not supplied, showing the default in brackets and validating each answer. It is disabled by default so that scripts run through <b>--file</b> never block on standard input.

After writing (or computing, on <b>DryRun</b>) the manifest, <b>init</b> runs nmm's own best-practice warnings linter (the same one as <b>nmm('validate', ..., '-warnings')</b>) and echoes non-fatal suggestions for recommended metadata that is missing, such as <b>repository</b>, <b>authors</b>, <b>keywords</b> or <b>description</b>. Warnings never stop the manifest from being written. On <b>DryRun</b> the returned struct also carries a <b>warnings</b> field.

The generated manifest is directly usable by <b>nmm('validate')</b> and, for a source module, by <b>nmm('pack')</b>.

## 💡 Example

Generate a manifest and validate it

```matlab
module_dir = [tempdir(), 'my_module/'];
mkdir(module_dir);
nmm('init', module_dir, 'module', 'my_module', 'title', 'My Module', ...
    'summary', 'a demo module', 'license', 'MIT', 'Skeleton', true);
nmm('validate', module_dir)

```

## 🔗 See also

[nmm](../modules_manager/nmm.md), [module.json](../modules_manager/module-json.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
