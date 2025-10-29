# setenv

Set the value of an environment variable.

## 📝 Syntax

- getenv(env_name, env_value)

## 📥 Input argument

- env_name - a string: environment variable name.
- env_value - a string: environment variable value.

## 📄 Description

<b>setenv</b> set the value of an environment variable.

## 💡 Example

```matlab
setenv('MY_ENV_VAR', 'funvalue')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR', '')
getenv('MY_ENV_VAR')
```

## 🔗 See also

[getenv](../os_functions/getenv.md), [searchenv](../os_functions/searchenv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
