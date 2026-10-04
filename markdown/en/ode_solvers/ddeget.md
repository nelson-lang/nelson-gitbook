# ddeget

Get a DDE option value.

## 📝 Syntax

- value = ddeget(options, name)
- value = ddeget(options, name, defaultValue)

## 📄 Description

<b>ddeget</b> retrieves a value from a DDE options structure and returns the default value when the option is empty.

| Call                                    | Purpose                                                  |
| --------------------------------------- | -------------------------------------------------------- |
| **value = \*get(options,name)**         | Returns the stored value for **name**.                   |
| **value = \*get(options,name,default)** | Returns **default** when the option is missing or empty. |

## 💡 Example

Complete DDE and BVP added features example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 See also

[ddeset](../ode_solvers/ddeset.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
