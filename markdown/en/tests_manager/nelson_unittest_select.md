# nelson.unittest.select

Filter a discovered test suite.

## 📝 Syntax

- selected = nelson.unittest.select(suite, Name, Value)

## 📥 Input argument

- suite - TestSuite returned by nelson.unittest.discover.
- Name, Value - selection options: Name, Module, File, Kind, Tags, ExcludeTags, Match, and Exclude.

## 📤 Output argument

- selected - filtered TestSuite preserving filtered-count metadata.

## 📄 Description

<b>nelson.unittest.select</b> applies selection filters without executing tests.

<b>Kind</b> accepts <b>test</b>, <b>bug</b>, <b>bench</b>, <b>all_tests</b>, and <b>all</b>.

## 💡 Example

```matlab

suite = nelson.unittest.select(suite, 'Tags', {'fast'}, 'ExcludeTags', {'gui'});

```

## 🔗 See also

[nelson.unittest.discover](../tests_manager/nelson.unittest.discover.md), [nelson.unittest.plan](../tests_manager/nelson.unittest.plan.md).
