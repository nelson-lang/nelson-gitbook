# asserts.satisfies

Check a value with a custom predicate.

## 📝 Syntax

- asserts.satisfies(value, predicate)
- [res, msg] = asserts.satisfies(value, predicate)

## 📥 Input argument

- value - Value passed as the only input to predicate.
- predicate - Function handle or function name. It must return a scalar logical value.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when predicate(value) returns scalar logical true. 

Invalid predicates or non-logical predicate results raise an argument error immediately.

## 💡 Examples

Named predicate

```matlab
asserts.satisfies(1, 'isnumeric');
```
Function handle predicate

```matlab
asserts.satisfies(1, @(x) isscalar(x));
```
Capture predicate failure

```matlab
[res, msg] = asserts.satisfies([1 2], @(x) isscalar(x));
```


## 🔗 See also

[asserts.istrue](../assert_functions/asserts.istrue.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
