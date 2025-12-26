# assert_isfalse

Check that condition is false.

## 📝 Syntax

- assert_isfalse(x)
- r = assert_isfalse(x)
- [r, msg] = assert_isfalse(x)
- assert_isfalse(x, err_msg)
- r = assert_isfalse(x, err_msg)
- [r, msg] = assert_isfalse(x, err_msg)

## 📥 Input argument

- x - a logical value to be tested for falseness.
- err_msg - a string containing the custom error message to display in case of assertion failure (optional).

## 📤 Output argument

- r - a logical value: true if the assertion passes, false otherwise.
- msg - a string containing the error message. If x == false, then msg == ''. If x == true, then msg contains the assertion failure message.

## 📄 Description

<b>assert_isfalse</b> raises an error if the input value is true.

This function also raises an error if the input is not a logical value, ensuring type safety.

When the optional <b>err_msg</b> parameter is provided, it will be used as the error message instead of the default message when the assertion fails.

This function is useful in unit testing to verify that conditions are false or that logical operations return the expected false result.

## 💡 Examples

Test that demonstrates assertion failure (3 is not equal to 4):

```matlab
assert_isfalse(3 ~= 4)
```

Test that passes (3 equals 4 is false):

```matlab
assert_isfalse(3 == 4)
```

Test with explicit false value:

```matlab
r = assert_isfalse(false)
```

Using return values to handle assertion results:

```matlab
[r, msg] = assert_isfalse(false)
```

Test with custom error message:

```matlab
[r, msg] = assert_isfalse(3 == 3, 'your error message.');
if ~r
    disp(['Custom error: ' msg])
end
```

Example showing error handling when assertion fails:

```matlab
try
    assert_isfalse(true, 'This should be false!');
catch ME
    disp(['Error caught: ' ME.message])
end
```

## 🔗 See also

[assert_istrue](../assert_functions/assert_istrue.md), [assert_checkerror](../assert_functions/assert_checkerror.md), [assert_isequal](../assert_functions/assert_isequal.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
