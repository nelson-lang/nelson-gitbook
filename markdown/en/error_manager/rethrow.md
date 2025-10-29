# rethrow

rethrow error.

## 📝 Syntax

- rethrow(MException)

## 📥 Input argument

- MException - MException object

## 📄 Description

<b>rethrow(MException)</b> reissues the error specified by <b>MException</b>.

## 💡 Example

```matlab

try
  a
catch ME
  disp(ME)
  rethrow(ME)
end

```

## 🔗 See also

[MException](../error_manager/MException.md), [throw](../error_manager/throw.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
