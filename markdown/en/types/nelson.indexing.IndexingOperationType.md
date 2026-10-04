# nelson.indexing.IndexingOperationType

Kind of a single indexing operation.

## 📝 Syntax

- t = nelson.indexing.IndexingOperationType.Paren

## 📥 Input argument

- t - an indexing operation type enumeration value.

## 📤 Output argument

- t - an indexing operation type enumeration value.

## 📄 Description

<b>nelson.indexing.IndexingOperationType</b> is an enumeration naming the kind of an indexing operation. Members: <b>Paren</b>, <b>Brace</b>, <b>Dot</b>, <b>ParenDelete</b>, <b>BraceDelete</b>. It is the <b>Type</b> property of a <b>nelson.indexing.IndexingOperation</b>.

## 💡 Example

An enumeration member.

```matlab
t = nelson.indexing.IndexingOperationType.Brace;
char(t)
```

## 🔗 See also

[nelson.indexing.IndexingOperation](../types/nelson.indexing.IndexingOperation.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
