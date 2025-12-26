# assert_istrue

Check that condition is true.

## 📝 Syntax

- assert_istrue(x)
- r = assert_istrue(x)
- [r, msg] = assert_istrue(x)
- assert_istrue(x, err_msg)
- r = assert_istrue(x, err_msg)
- [r, msg] = assert_istrue(x, err_msg)

## 📥 Input argument

- x - a logical value to be tested for truthfulness.
- err_msg - a string containing the custom error message to display in case of assertion failure (optional).

## 📤 Output argument

- r - a logical value: true if the assertion passes, false otherwise.
- msg - a string containing the error message. If x == true, then msg == ''. If x == false, then msg contains the assertion failure message.

## 📄 Description

<b>assert_istrue</b> raises an error if the input value is false.

This function also raises an error if the input is not a logical value, ensuring type safety.

When the optional <b>err_msg</b> parameter is provided, it will be used as the error message instead of the default message when the assertion fails.

This function is essential in unit testing to verify that conditions are true or that logical operations return the expected true result.

## 💡 Examples

Test that passes (3 equals 3 is true):

```matlab
assert_istrue(3 == 3)
```

Test that demonstrates assertion failure (3 equals 4 is false):

```matlab
try
    assert_istrue(3 == 4)
catch ME
    disp(['Error: ' ME.message])
end
```

Test with explicit false value to show failure:

```matlab
r = assert_istrue(false)
```

Using return values to handle assertion results:

```matlab
[r, msg] = assert_istrue(false)
```

Test with custom error message:

```matlab
[r, msg] = assert_istrue(3 == 4, 'your error message.');
if ~r
    disp(['Custom error: ' msg])
end
```

Example showing successful assertion with true value:

```matlab
assert_istrue(true);
disp('Assertion passed!')
```

## 🔗 See also

[assert_isfalse](../assert_functions/assert_isfalse.md), [assert_checkerror](../assert_functions/assert_checkerror.md), [assert_isequal](../assert_functions/assert_isequal.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
