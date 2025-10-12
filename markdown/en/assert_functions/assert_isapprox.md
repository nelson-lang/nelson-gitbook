# assert_isapprox

Check that computed and expected values are approximately equal.

## Syntax

- assert_isapprox(computed, expected)
- assert_isapprox(computed, expected, precision)
- res = assert_isapprox(computed, expected)
- res = assert_isapprox(computed, expected, precision)
- [res, msg] = assert_isapprox(computed, expected)
- [res, msg] = assert_isapprox(computed, expected, precision)

## Input argument

- computed - a numeric value: matrix, sparse double, or multidimensional array.
- expected - a numeric value: matrix, sparse double, or multidimensional array.
- precision - a double value specifying the relative tolerance. Default precision is 0.

## Output argument

- res - a logical value: true if values are approximately equal, false otherwise.
- msg - a string containing the error message. If res == true, then msg == ''. If res == false, then msg contains the assertion failure message.

## Description

<p>assert_isapprox raises an error if the computed value is not approximately equal to the expected value.</p>

<p>This function compares two floating point numbers with a specified tolerance, allowing you to check that two numbers are "approximately" equal when exact equality is not suitable due to floating-point precision limitations.</p>

<p>The comparison uses relative error calculation to determine if the values are within the specified precision tolerance.</p>

<p>This function is particularly useful in unit testing when dealing with numerical computations that may have small rounding errors.</p>

## Used function(s)

isapprox

## Examples

Test approximate equality with sufficient precision tolerance:

```matlab
assert_isapprox(1.23456, 1.23457, 1e-5)
```

Test that fails when precision is too strict:

```matlab
try
    assert_isapprox(1.23456, 1.23457, 1e-6)
catch ME
    disp(['Error: ' ME.message])
end
```

Using return values to handle assertion results:

```matlab
[r, msg] = assert_isapprox(1.23456, 1.23457, 1e-6);
assert_isfalse(r);
assert_isequal(msg, _('Assertion failed: expected and computed values are too different.'));
```

Test with matrices:

```matlab
A = [1.0001, 2.0002; 3.0003, 4.0004];
B = [1.0000, 2.0000; 3.0000, 4.0000];
assert_isapprox(A, B, 1e-3)
```

## See also

[isapprox](../elementary_functions/isapprox.md), [assert_isequal](../assert_functions/assert_isequal.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
