# unsetenv

Remove an environment variable.

## 📝 Syntax

- unsetenv(env_name)

## 📥 Input argument

- env_name - string scalar or character vector: environment variable name.

## 📄 Description

<b>unsetenv</b> removes the environment variable <b>env_name</b> from the current process environment.

If the variable does not exist, <b>unsetenv</b> has no effect.

## 💡 Example

```matlab
setenv('MY_ENV_VAR', 'funvalue')
isenv('MY_ENV_VAR')
unsetenv('MY_ENV_VAR')
isenv('MY_ENV_VAR')
```

## 🔗 See also

[setenv](../os_functions/setenv.md), [getenv](../os_functions/getenv.md), [isenv](../os_functions/isenv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
