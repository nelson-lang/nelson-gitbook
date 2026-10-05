# nelson.unittest.assume

Skip a test when a runtime assumption is not satisfied.

## 📝 Syntax

- nelson.unittest.assume(condition)
- nelson.unittest.assume(condition, reason)

## 📥 Input argument

- condition - logical scalar that must be true to continue the current test.
- reason - optional text explaining why the test is skipped.

## 📄 Description


<b>nelson.unittest.assume</b> marks the current test as skipped when a runtime prerequisite is false.

## 💡 Example



```matlab
nelson.unittest.assume(ispc(), 'Requires Windows');
```


## 🔗 See also

[nelson.unittest.skip](../tests_manager/nelson_unittest_skip.md), [skip_testsuite](../tests_manager/test_skip_testsuite.md).