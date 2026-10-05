# throwAsCaller

Throw exception as if occurs within calling function.

## 📝 Syntax

- throwAsCaller(MException)

## 📥 Input argument

- MException - MException object

## 📄 Description


It throws an exception as if it occurs within the calling function.

## 💡 Example



```matlab

function test_throwAsCaller()
  ME = MException('n:m', 'your error')
  throwAsCaller(ME)
```


## 🔗 See also

[MException](../error_manager/MException.md), [rethrow](../error_manager/rethrow.md), [throw](../error_manager/throw.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
