# nelson.unittest.discover

Discover test files and return a structured suite.

## 📝 Syntax

- suite = nelson.unittest.discover(targets)
- suite = nelson.unittest.discover(targets, Name, Value)

## 📥 Input argument

- targets - module name, directory, file name, or cell array of targets.
- Name, Value - <b>Kind</b> selection option.

## 📤 Output argument

- suite - TestSuite structure containing discovered TestCase entries.

## 📄 Description

<b>nelson.unittest.discover</b> finds <b>test\_\*.m</b>, <b>bug\_\*.m</b>, and <b>bench\_\*.m</b> files.

Discovery reads file tags on every call and records stable TestCase fields such as id, module, file, name, kind, tags, mode, resources, timeout, and weight.

For an external module, the module field comes from its module.json manifest and its root is located by the enclosing etc/startup.m file. This also supports versioned installations, temporary package staging directories, and nested tests. Shipped modules and registered legacy modules are identified from their module roots. A directory name alone does not identify a module; files without a valid module identity have an empty module field.

## 💡 Example

```matlab

suite = nelson.unittest.discover('string', 'Kind', 'all_tests');

```

## 🔗 See also

[nelson.unittest](../tests_manager/nelson.unittest.md), [nelson.unittest.select](../tests_manager/nelson.unittest.select.md), [nelson.unittest.run](../tests_manager/nelson.unittest.run.md).
