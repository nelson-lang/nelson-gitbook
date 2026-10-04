# test_makeref

Creates a '.ref' file for a test

## 📝 Syntax

- status = test_makeref(filename)

## 📥 Input argument

- filename - a string: filename, a test file.

## 📤 Output argument

- status - a logical: true if .ref was generated.

## 📄 Description

<b>test_makeref</b> function creates a '.ref' file from a test file.

<b>test_makeref</b> is a compatibility wrapper over <b>nelson.unittest.makeref</b>.

test file must have <--CHECK REF--> tag.

## 🔗 See also

[test_run](../tests_manager/test_run.md), [nelson.unittest](../tests_manager/nelson_unittest.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
