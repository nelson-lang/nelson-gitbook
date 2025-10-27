# assert

Check that condition is true.

## 📝 Syntax

- assert(x)
- r = assert(x)
- [r, msg] = assert(x)
- assert(x, err_msg)
- r = assert(x, err_msg)
- [r, msg] = assert(x, err_msg)

## 📥 Input argument

- x - a logical value to be tested for truthfulness.
- err_msg - a string containing the custom error message to display in case of assertion failure (optional).

## 📤 Output argument

- r - a logical value: true if the assertion passes, false otherwise.
- msg - a string containing the error message. If x == true, then msg == ''. If x == false, then msg contains the assertion failure message.

## 📄 Description

<b>assert</b> raises an error if the input value is false.

This function also raises an error if the input is not a logical value, ensuring type safety.

When the optional <b>err_msg</b> parameter is provided, it will be used as the error message instead of the default message when the assertion fails.

This is the fundamental assertion function that forms the basis for testing conditions in programs and unit tests.

## 💡 Examples

Test assertion failure with custom error message:

```matlab
try
    assert(4 == 3, _('error for comparison.'))
catch ME
    disp(['Error: ' ME.message])
end
```

Test successful assertion:

```matlab
assert(5 > 3);
disp('Assertion passed: 5 is greater than 3')
```

Using return values to handle assertion results:

```matlab
[r, msg] = assert(false, 'This condition is false');
if ~r
    disp(['Assertion failed: ' msg])
end
```

Basic assertion without custom message:

```matlab
x = 10;
assert(x > 0)  % Will pass
assert(x < 0)  % Will fail with default message
```

## 🔗 See also

[assert_istrue](../assert_functions/assert_istrue.md), [assert_isfalse](../assert_functions/assert_isfalse.md), [assert_isequal](../assert_functions/assert_isequal.md), [assert_checkerror](../assert_functions/assert_checkerror.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
