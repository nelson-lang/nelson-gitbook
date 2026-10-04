# odeget

Read an ODE option.

## 📝 Syntax

- value = odeget(options, name)
- value = odeget(options, name, defaultValue)

## 📄 Description

<b>odeget</b> returns a named option value or a fallback value.

| Call                                    | Purpose                                                  |
| --------------------------------------- | -------------------------------------------------------- |
| **value = \*get(options,name)**         | Returns the stored value for **name**.                   |
| **value = \*get(options,name,default)** | Returns **default** when the option is missing or empty. |

## 💡 Example

```matlab
options = odeset('RelTol', 1e-4); value = odeget(options, 'RelTol')
```

## 🔗 See also

[odeset](../ode_solvers/odeset.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
