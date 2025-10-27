# assert_isequal

Check that computed and expected values are equal.

## 📝 Syntax

- assert_isequal(computed, expected)
- res = assert_isequal(computed, expected)
- [res, msg] = assert_isequal(computed, expected)

## 📥 Input argument

- computed - a value of any type to be tested for equality.
- expected - a value of any type representing the expected result.

## 📤 Output argument

- res - a logical value: true if values are equal, false otherwise.
- msg - a string containing the error message. If res == true, then msg == ''. If res == false, then msg contains the assertion failure message.

## 📄 Description

<b>assert_isequal</b> raises an error if the computed value is not equal to the expected value.

This function performs strict equality testing that checks for same type, same dimensions, and same values comparisons. It uses the same logic as the <b>isequaln</b> function.

Unlike standard equality operators, this function properly handles NaN values, considering them equal when both values contain NaN in the same positions.

This function is essential for unit testing to verify that computed results match expected outcomes exactly.

## Used function(s)

isequaln

## 📚 Bibliography

"Automated Software Testing for Matlab", Steven Eddins, 2009

## 💡 Examples

Test equality of identical matrices:

```matlab
A = eye(3, 3);
assert_isequal(A, A)
```

Test that demonstrates type mismatch detection:

```matlab
A = eye(3, 3);
B = single(A);
try
    assert_isequal(A, B)
catch ME
    disp(['Error: ' ME.message])
end
```

Test NaN equality handling:

```matlab
A = NaN;
B = A;
assert_isequal(A, B)
```

Using return values to handle assertion results:

```matlab
[res, msg] = assert_isequal([1, 2, 3], [1, 2, 4]);
if res
    disp('Values are equal')
else
    disp(['Values are not equal: ' msg])
end
```

## 🔗 See also

[isequaln](../elementary_functions/isequaln.md), [assert_isapprox](../assert_functions/assert_isapprox.md), [assert_istrue](../assert_functions/assert_istrue.md), [assert_isfalse](../assert_functions/assert_isfalse.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
