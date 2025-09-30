# assert_isapprox

Check that computed and expected values are approximately equal.

## Syntax

- assert_isapprox(computed, expected)
- assert_isapprox(computed, expected, precision)
- res = assert_isapprox(computed, expected, precision)
- [res, msg] = assert_isapprox(computed, expected, precision)

## Input argument

- computed - a value: numeric matrix, sparse double, a multidimensional matrix
- expected - a value: numeric matrix, sparse double, a multidimensional matrix
- expected - a double value. default precision is 0.

## Output argument

- res - a logical value
- msg - a string value, the error message. If res == true, then errormsg == ''. If res == false, then msg contains the error message.

## Description

<p>
            <b>assert_isapprox</b> raises an error if computed value is not approximately equal to expected value.</p>
<p>This function compares two floating point numbers, which allows to check that two numbers are "approximately" equal, i.e. that the relative error is small.</p>

## Used function(s)

isapprox

## Examples

```matlab
assert_isapprox(1.23456, 1.23457, 1e-5)
```

```matlab
assert_isapprox(1.23456, 1.23457, 1e-6)
```

```matlab
[r, msg] =assert_isapprox(1.23456, 1.23457, 1e-6)
assert_isfalse(r);
assert_isequal(msg, _('Assertion failed: expected and computed values are too different.'));
```

## See also

[isapprox](../elementary_functions/isapprox.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
