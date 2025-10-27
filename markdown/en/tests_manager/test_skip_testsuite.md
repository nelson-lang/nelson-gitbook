# skip_testsuite

Skip test suite on condition

## 📝 Syntax

- skip_testsuite()
- skip_testsuite(reason)
- skip_testsuite(condition)
- skip_testsuite(condition, reason)

## 📥 Input argument

- condition - logical: true (default) or false
- reason - a string: reason to skip test suite

## 📄 Description

The <b>skip_testsuite</b> function allows you to skip a test suite based on a specified condition.

<b>condition</b>: A boolean expression that determines whether to skip the test suite. If <b>condition</b> evaluates to <b>true</b>, the test suite will be skipped.

<b>reason</b>: A string explaining the reason for skipping the test suite. This parameter is useful for providing context to other developers or yourself in case the test suite is skipped.

## 💡 Example

```matlab
skip_testsuite(true, 'Test skipped')
```

## 🔗 See also

[test_run](../tests_manager/test_run.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.4.0   | initial version |

## 👤 Author

Allan CORNET
